class ModelstocksController < ApplicationController
  before_action :set_modelstock, only: [:show, :edit, :update, :destroy]

  # GET /modelstocks
  def index

    # ORDER BY parameter
    if params[:order].present? then
      order = params[:order]
    elsif session[:order].present? then
      order = session[:order]
    else
      order = 'name' # default
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
    select = 'id, name, scale, status, group1, group2, provider'
    @modelstocks = Modelstock.select(select)
    if like.present? then
      @modelstocks = @modelstocks.where('(name LIKE ?) OR (group2 LIKE ?) OR (group1 LIKE ?)', like, like, like)
    end
    @modelstocks = @modelstocks.order(order).page(params[:page])

  end

  # GET /modelstocks/1
  def show
  end

  # GET /modelstocks/new
  def new
    @modelstock = Modelstock.new
    render_new
  end

  # GET /modelstocks/1/edit
  def edit
    render_edit
  end

  # POST /modelstocks
  def create
    @modelstock = Modelstock.new(modelstock_params)

    if @modelstock.save
      redirect_to @modelstock, notice: t('message.registered')
    else
      render_new
    end
  end

  # PATCH/PUT /modelstocks/1
  def update
    if @modelstock.update(modelstock_params)
      redirect_to @modelstock, notice: t('message.updated')
    else
      render_edit
    end
  end

  # DELETE /modelstocks/1
  def destroy
    @modelstock.destroy
    redirect_to modelstocks_url, notice: t('message.deleted')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modelstock
      @modelstock = Modelstock.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def modelstock_params
      params.require(:modelstock).permit(:name, :description, :scale, :status, :group1, :group2, :provider)
    end
end
