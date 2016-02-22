class StampsController < ApplicationController
  before_filter :set_stamp, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # ORDER BY ASC or DESC as order
    if params[:order].present? then
      if params[:order] == 'asc' then
        order = 'ASC'
      elsif params[:order] == 'desc' then
        order = 'DESC'
      else
        order = 'ASC' # set default
      end
      session[:order] = params[:order] # store to session
    else
      order = 'ASC' # set default
      session[:order] = 'asc' # set default
    end

    # ORDER BY sorting parameter as sort
    if params[:sort].present? then
      case params[:sort]
      when 'name'
        sort = 'name'
      when 'region'
        sort = 'region'
      when 'group1'
        sort = 'group1'
      when 'group2'
        sort = 'group2'
      when 'status'
        sort = 'status'
      else
        sort = 'name' # set default
      end
      session[:sort] = params[:sort] # store to session
    else
      sort = 'name' # set default
      session[:sort] = 'name' # set default
    end

    # LIKE parameter(keyword) as like
    like = ''
    if params[:keyword].present? && params[:commit].present? && params[:commit] == t('stamp.index.search') then
      like = '%' + params[:keyword].to_s + '%'
      session[:keyword] = params[:keyword].to_s
    elsif params[:commit].present? && params[:commit] == t('stamp.index.clear') then
      # all cleared
      like = ''
      session[:keyword] = ''
      session[:sort] = ''
      session[:order] = ''
    elsif session[:keyword].present? then
      like = '%' + session[:keyword].to_s + '%'
    else
      like = '' # set default
    end

    # exec SELECT
    if like.present? then
      @stamps = Stamp.where('(name LIKE ?) OR (group1 LIKE ?) OR (group2 LIKE ?) OR (group3 LIKE ?) OR (price LIKE ?) OR (remark1 LIKE ?) OR (remark2 LIKE ?) OR (remark3 LIKE ?)', like, like , like, like, like, like, like, like).order(sort + ' ' + order).page(params[:page])
    else
      @stamps = Stamp.order(sort + ' ' + order).page(params[:page])
    end
    respond_with(@stamps)
  end

  def show
    respond_with(@stamp)
  end

  def new
    @stamp = Stamp.new
    respond_with(@stamp)
  end

  def edit
  end

  def create
    @stamp = Stamp.new(params[:stamp])
    @stamp.save
    respond_with(@stamp)
  end

  def update
    @stamp.update_attributes(params[:stamp])
    respond_with(@stamp)
  end

  def destroy
    @stamp.destroy
    respond_with(@stamp)
  end

  private
    def set_stamp
      @stamp = Stamp.find(params[:id])
    end
end
