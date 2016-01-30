class ModelstocksController < ApplicationController
  before_filter :set_modelstock, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # set ORDER_BY parameter if params[:order] is set
    # default is 'name asc'
    if params[:order].present? then 
      case params[:order]
      when 'name desc'
        order_params = 'name desc'
      when 'name asc'
        order_params = 'name asc'
      when 'realm_id, series_id desc'
        order_params = 'realm_id, series_id desc'
      when 'realm_id, series_id asc'
        order_params = 'realm_id, series_id asc'
      else
        order_params = 'name asc' # default
      end
    else
      order_params = 'name asc' # default
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
    @modelstocks = Modelstock.order(order_params).where("(name LIKE ?)" + series_cond, '%'+like_params+'%').page(params[:page])

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
