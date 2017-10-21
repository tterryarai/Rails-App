class StampsController < ApplicationController
  before_action :set_stamp, only: [:show, :edit, :update, :destroy]

  # GET /stamps
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
    if params[:keyword].present? && params[:commit].present? && params[:commit] == t('common.search') then
      like = '%' + params[:keyword].to_s + '%'
      session[:keyword] = params[:keyword].to_s
    elsif session[:keyword].present? then
      like = '%' + session[:keyword].to_s + '%'
    else
      like = ''
      session[:keyword] = ''
      session[:order] = ''
    end

    # all clear
    if params[:commit].present? && params[:commit] == t('common.clear') then
      like = ''
      session[:keyword] = ''
      session[:order] = ''
    end

    # exec SELECT
    select = 'id, name, area, group1, group2, group3, issue_date, price, remark1, remark2, remark3, leaf_id, status'
    @stamps = Stamp.select(select)
    if like.present? then
      @stamps = @stamps.where('(name LIKE ?) OR (area LIKE ?) OR (status LIKE ?) OR (group1 LIKE ?) OR (group2 LIKE ?) OR (group3 LIKE ?) OR (remark1 LIKE ?) OR (remark2 LIKE ?) OR (remark3 LIKE ?)', like, like , like, like, like, like, like, like, like)
    end
    @stamps = @stamps.order(order).page(params[:page])

  end

  # GET /stamps/1
  def show
  end

  # GET /stamps/new
  def new
    @stamp = Stamp.new
    render_new
  end

  # GET /stamps/1/edit
  def edit
    render_edit
  end

  # POST /stamps
  def create
    @stamp = Stamp.new(stamp_params)

    if @stamp.save
      redirect_to @stamp, notice: t('message.registered')
    else
      render_new
    end
  end

  # PATCH/PUT /stamps/1
  def update
    if @stamp.update(stamp_params)
      redirect_to @stamp, notice: t('message.updated')
    else
      render_edit
    end
  end

  # DELETE /stamps/1
  def destroy
    @stamp.destroy
    redirect_to stamps_url, notice: t('message.deleted')
  end

  def statistics
    @data = []
    a = []
    Stamp.all.group(:area).order('count_area desc').count(:area).each do |i|
      a << { "label" => i[0], "value" => i[1] }
    end
    @data[0] = a

    s = []
    Stamp.all.group(:status).order('count_status desc').count(:status).each do |j|
      s << { "label" => t('stamp.statuses.' + j[0]), "value" => j[1] }
    end
    @data[1] = s

    a1 = []
    a2 = []
    Stamp.all.group(:area, :status).order(:area).count.each do |k|
      a2 << { "label" => k[0][0] + " " + t('stamp.statuses.' + k[0][1]), "value" => k[1] }
    end
    a1 << { "key" => "Series1", "values" => a2 }
    @data[2] = a1

    aa1 = []
    aa2 = []
    aa3 = []
    Stamp.all.group(:area).order(:area).where("status ='__not_purchase__'").count.each do |k|
      aa2 << { "label" => k[0], "value" => k[1] }
    end
    Stamp.all.group(:area).order(:area).where("status ='__purchased__'").count.each do |k|
      aa3 << { "label" => k[0], "value" => k[1] }
    end
    aa1 << { "key" => "Not Purchase", "values" => aa2, "color" => "#d67777" }
    aa1 << { "key" => "Purchased", "values" => aa3, "color" => "#77d677" }
    @data[3] = aa1
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stamp
      @stamp = Stamp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stamp_params
      params.require(:stamp).permit(:name, :issue_date, :description, :image_path, :remark1, :remark2, :remark3, :group1, :group2, :group3, :price, :area, :status, :leaf_id)
    end
end
