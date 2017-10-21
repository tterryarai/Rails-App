class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  # GET /authors
  def index
    @authors = Author.all.order(name: :asc)
  end

  # GET /authors/1
  # def show
  # end

  # GET /authors/new
  def new
    @author = Author.new
    render_new
  end

  # GET /authors/1/edit
  def edit
    render_edit
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to authors_path, notice: t('message.registered')
    else
      render_new
    end
  end

  # PATCH/PUT /authors/1
  def update
    if @author.update(author_params)
      redirect_to authors_path, notice: t('message.updated')
    else
      render_edit
    end
  end

  # DELETE /authors/1
  def destroy
    @author.destroy
    redirect_to authors_path, notice: t('message.deleted')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def author_params
      params.require(:author).permit(:name)
    end
end
