class AuthorsController < ApplicationController
  before_filter :set_author, only: [:edit, :update, :destroy]

  respond_to :html

  def index
    @authors = Author.order(:name).all
    respond_with(@authors)
  end

#  def show
#    respond_with(@author)
#  end

  def new
    @author = Author.new
    respond_with(@author)
  end

  def edit
  end

  def create
    @author = Author.new(params[:author])
    @author.save
#    respond_with(@author)
    redirect_to authors_path
  end

  def update
    @author.update_attributes(params[:author])
#    respond_with(@author)
    redirect_to authors_path
  end

  def destroy
    @author.destroy
#    respond_with(@author)
    redirect_to authors_path
  end

  private
    def set_author
      @author = Author.find(params[:id])
    end
end
