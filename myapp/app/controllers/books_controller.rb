class BooksController < ApplicationController
  before_filter :set_book, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # set ORDER_BY parameter if params[:order] is set
    # default is 'title asc'
    if params[:order].present? then 
      case params[:order]
      when 'title desc'
        order = 'books.title DESC'
      when 'title asc'
        order = 'books.title ASC'
      when 'series desc'
        order = 'series.name DESC'
      when 'series asc'
        order = 'series.name ASC'
      when 'realm desc'
        order = 'books.realm DESC'
      when 'realm asc'
        order = 'books.realm ASC'
      else
        order = 'books.title ASC' # set default for other illegal order
      end
        session[:order] = params[:order] # store order
    else
      order = 'books.title ASC' # set default
      session[:order] = ''
    end

    # set LIKE parameter from params[:keyword] or session[:keyword] or ''
    if params[:keyword].present? && params[:commit].present? && params[:commit]==t('book.index.search') then
      like = '%' + params[:keyword].to_s + '%'
      session[:keyword] = params[:keyword]
    elsif params[:commit].present? && params[:commit]==t('book.index.clear') then
      like = ''
      session[:keyword] = ''
    elsif session[:keyword].present? then
      like = '%' + session[:keyword].to_s + '%'
    else
      like = '' # default
    end

    # exec SELECT
    @books = Book.joins('LEFT JOIN series ON books.series_id = series.id')
    if like.present? then
      @books = @books.where('(books.title LIKE ?) OR (series.name LIKE ?) OR (books.realm LIKE ?)', like, like, like)
    end
    @books = @books.order(order).page(params[:page])

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
