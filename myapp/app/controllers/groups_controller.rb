class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  def index
    @groups = Group.order([:app_id, :group1, :group2]).all
  end

  # GET /groups/1
  # def show
  # end

  # GET /groups/new
  def new
    @group = Group.new
    render_new
  end

  # GET /groups/1/edit
  def edit
    render_edit
  end

  # POST /groups
  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to groups_path, notice: t('message.registered')
    else
      render_new
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      redirect_to groups_path, notice: t('message.updated')
    else
      render_edit
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
    redirect_to groups_path, notice: t('message.deleted')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_params
      params.require(:group).permit(:app_id, :group1, :group2)
    end
end
