#coding: utf-8
class LeafsController < ApplicationController
  before_action :set_leaf, only: [:show, :edit, :update, :destroy]

  # GET /leafs
  def index
    if params[:select].present? then
      sel = params[:select]
    elsif session[:select].present? then
      sel = session[:select]
    else
      sel = ''
    end

    case sel
    when 'ALL' then
      @leafs = Leaf.all
      session[:select] = 'ALL'
    when 'CLEAR' then
      @leafs = nil
      session[:select] = ''
    when '' then
      @leafs = Leaf.all
      session[:select] = ''
    else
      @leafs = Leaf.select(:id, :group2, :title).where('group1 = ?', sel).order(group2: :asc, title: :asc)
      session[:select] = sel
    end

  end

  # GET /leafs/1
  def show
    @leaf.group3 = '(' + @leaf.group3 + ')' if (@leaf.group3.present? && @leaf.group3 != '(none)')
  end

  # GET /leafs/new
  def new
    @leaf = Leaf.new
    render_new
  end

  # GET /leafs/1/edit
  def edit
    render_edit
  end

  # POST /leafs
  def create
    @leaf = Leaf.new(leaf_params)

    if @leaf.save
      redirect_to @leaf, notice: t('message.registered')
    else
      render_new
    end
  end

  # PATCH/PUT /leafs/1
  def update
    if @leaf.update(leaf_params)
      redirect_to @leaf, notice: t('message.updated')
    else
      render_edit
    end
  end

  # DELETE /leafs/1
  def destroy
    @leaf.destroy
    redirect_to leafs_url, notice: t('message.deleted')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaf
      @leaf = Leaf.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def leaf_params
      params.require(:leaf).permit(:title, :subtitle, :description, :group1, :group2, :group3)
    end
end
