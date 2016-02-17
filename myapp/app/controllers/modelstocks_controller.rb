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
      when 'series_id desc'
        order = 'realms.name, series.name, modelstocks.name DESC'
      when 'series_id asc'
        order = 'realms.name, series.name, modelstocks.name ASC'
      else
        order = 'modelstocks.name ASC' # default
      end
      session[:order] = params[:order] # store order
    else
      order = 'modelstocks.name ASC' # default
      session[:order] = ''
    end

    # set LIKE parameter from params[:keyword] or session[:keyword] or ''
    if params[:keyword].present? && params[:commit].present? && params[:commit]==t('modelstock.index.search') then
      like = '%'+params[:keyword].to_s+'%'
      session[:keyword] = params[:keyword]
    elsif params[:commit].present? && params[:commit]==t('modelstock.index.clear') then
      like = ''
      session[:keyword] = ''
    elsif session[:keyword].present? then
      like = '%'+session[:keyword].to_s+'%'
    else
      like_params = '' # default
      session[:keyword] = ''
    end

    # exec SELECT
    @modelstocks = Modelstock.
      joins('LEFT JOIN series ON modelstocks.series_id = series.id').
      joins('LEFT JOIN realms ON series.realm_id = realms.id')
    if like.present? then
      @modelstocks = @modelstocks.where('modelstocks.name LIKE ? OR series.name LIKE ? OR realms.name LIKE ?', like, like, like)
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
