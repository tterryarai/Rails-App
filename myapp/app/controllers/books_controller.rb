class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  def index

    # ORDER BY parameter
    if params[:order].present? then
      order = params[:order]
    elsif session[:order].present? then
      order = session[:order]
    else
      order = 'title' # default
    end
    session[:order] = order # store order

    # LIKE parameter
    if params[:keyword].present? && params[:commit].present? && params[:commit]==t('common.search') then
      like = '%' + params[:keyword].to_s + '%'
      session[:keyword] = params[:keyword]
    elsif session[:keyword].present? then
      like = '%' + session[:keyword].to_s + '%'
    else
      like = ''
      session[:keyword] = ''
      session[:order] = ''
    end

    # all clear
    if params[:commit].present? && params[:commit]==t('common.clear') then
      like = ''
      session[:keyword] = ''
      session[:order] = ''
    end

    # exec SELECT
    select = 'id, title, volume, status, group1, group2'
    @books = Book.select(select)
    if like.present? then
      @books = @books.where('(title LIKE ?) OR (group1 LIKE ?) OR (group2 LIKE ?)', like, like, like)
    end
    @books = @books.order(order).page(params[:page])

  end

  # GET /books/1
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
    render_new
  end

  # GET /books/1/edit
  def edit
    render_edit
  end

  # POST /books
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: t('message.registered')
    else
      render_new
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      redirect_to @book, notice: t('message.updated')
    else
      render_edit
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy
    redirect_to books_url, notice: t('message.deleted')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def book_params
      params.require(:book).permit(:title, :volume, :description, :status, :group1, :group2, :provider, :author)
    end
end
