class StampsController < ApplicationController
  before_filter :set_stamp, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @stamps = Stamp.all
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
