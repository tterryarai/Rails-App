class VirtualRunsController < ApplicationController
  before_action :set_virtual_run, only: [:show, :edit, :update, :destroy]

  # GET /virtual_runs
  def index
    @virtual_runs = VirtualRun.all
  end

  # GET /virtual_runs/1
  def show
  end

  # GET /virtual_runs/new
  def new
    @virtual_run = VirtualRun.new
  end

  # GET /virtual_runs/1/edit
  def edit
  end

  # POST /virtual_runs
  def create
    @virtual_run = VirtualRun.new(virtual_run_params)

    @virtual_run.status = 'Start'
    @virtual_run.length = 0
    @virtual_run.last = 0

    if @virtual_run.save
      redirect_to @virtual_run, notice: 'Virtual run was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /virtual_runs/1
  def update

    @virtual_run.length = @virtual_run.length + params[:virtual_run][:last].to_f
    if @virtual_run.length >= @virtual_run.virtual_course.length then
      @virtual_run.status = 'Goal'
    elsif @virtual_run.length > 0 then
      @virtual_run.status = 'Running'
    else
      @virtual_run.status = 'Start'
    end

    if @virtual_run.update(virtual_run_params)
      redirect_to @virtual_run, notice: 'Virtual run was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /virtual_runs/1
  def destroy
    @virtual_run.destroy
    redirect_to virtual_runs_url, notice: 'Virtual run was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_virtual_run
      @virtual_run = VirtualRun.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def virtual_run_params
      params.require(:virtual_run).permit(:name, :status, :length, :last, :virtual_course_id)
    end
end
