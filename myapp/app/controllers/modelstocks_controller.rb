class ModelstocksController < ApplicationController
  before_filter :set_modelstock, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # set ORDER_BY parameter if params[:order] is set
    # default is 'name asc'
    if params[:order].present? then 
      case params[:order]
      when 'name desc'
        order = 'modelstocks.name DESC'
      when 'name asc'
        order = 'modelstocks.name ASC'
      when 'series desc'
        order = 'series.name DESC'
      when 'series asc'
        order = 'series.name ASC'
      when 'realm desc'
        order = 'modelstocks.realm DESC'
      when 'realm asc'
        order = 'modelstocks.realm ASC'
      else
        order = 'modelstocks.name ASC' # set default for other illegal order
      end
      session[:order] = params[:order] # store order
    else
      order = 'modelstocks.name ASC' # set default
      session[:order] = ''
    end

    # set LIKE parameter from params[:keyword] or session[:keyword] or ''
    if params[:keyword].present? && params[:commit].present? && params[:commit]==t('modelstock.index.search') then
      like = '%' + params[:keyword].to_s + '%'
      session[:keyword] = params[:keyword]
    elsif params[:commit].present? && params[:commit]==t('modelstock.index.clear') then
      like = ''
      session[:keyword] = ''
    elsif session[:keyword].present? then
      like = '%' + session[:keyword].to_s + '%'
    else
      like = '' # default
    end

    # exec SELECT
    @modelstocks = Modelstock.joins('LEFT JOIN series ON modelstocks.series_id = series.id')
    if like.present? then
      @modelstocks = @modelstocks.where('(modelstocks.realms LIKE ?) OR (series.name LIKE ?) OR (modelstocks.name LIKE ?)', like, like, like)
    end
    @modelstocks = @modelstocks.order(order).page(params[:page])

    respond_with(@modelstocks)
  end

  def show
    respond_with(@modelstock)
  end

  def new
    @modelstock = Modelstock.new
    respond_with(@modelstock)
  end

  def edit
  end

  def create
    @modelstock = Modelstock.new(params[:modelstock])
    @modelstock.save
    respond_with(@modelstock)
  end

  def update
    @modelstock.update_attributes(params[:modelstock])
    respond_with(@modelstock)
  end

  def destroy
    @modelstock.destroy
    respond_with(@modelstock)
  end

  private
    def set_modelstock
      @modelstock = Modelstock.find(params[:id])
    end
end
