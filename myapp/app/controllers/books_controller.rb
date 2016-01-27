class BooksController < ApplicationController
  before_filter :set_book, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # set ORDER_BY parameter if params[:order] is set
    # default is 'title asc'
    if params[:order].present? then 
      case params[:order]
      when 'title desc'
        order_params = 'title desc'
      when 'title asc'
        order_params = 'title asc'
      when 'series_id, volume desc'
        order_params = 'series_id, volume desc'
      when 'series_id, volume asc'
        order_params = 'series_id, volume asc'
      else
        order_params = 'title asc' # default
      end
    else
      order_params = 'title asc' # default
    end
    session[:order] = order_params # store order

    # set LIKE parameter from params[:keyword] or session[:keyword] or ''
    if params[:keyword].present? && params[:commit].present? && params[:commit]=='Search' then
      like_params = params[:keyword].to_s
      session[:keyword] = like_params
    elsif params[:commit].present? && params[:commit]=='Clear' then
      like_params = ''
      session[:keyword] = like_params
    elsif session[:keyword].present? then
      like_params = session[:keyword].to_s
    else
      like_params = '' # default
    end

    # set OR condition from series
    series_cond = ''
    Series.select('id').where('(name LIKE ?)', '%'+like_params+'%').each do |item|
      series_cond = series_cond + ' or series_id = ' + item.id.to_s
    end

    # exec SELECT
    @books = Book.order(order_params).where("(title LIKE ?)" + series_cond, '%'+like_params+'%').page(params[:page])

    respond_with(@books)
  end

  def show
    respond_with(@book)
  end

  def new
    @book = Book.new
    respond_with(@book)
  end

  def edit
  end

  def create
    @book = Book.new(params[:book])
    @book.save
    respond_with(@book)
  end

  def update
    @book.update_attributes(params[:book])
    respond_with(@book)
  end

  def destroy
    @book.destroy
    respond_with(@book)
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end
end
