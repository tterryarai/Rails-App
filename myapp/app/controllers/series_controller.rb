class SeriesController < ApplicationController
  before_filter :set_series, only: [:edit, :update, :destroy]

  respond_to :html

  def index
    @series = Series.order("realm_id, name asc").all
    respond_with(@series)
  end

#  def show
#    respond_with(@series)
#  end

  def new
    @series = Series.new
    respond_with(@series)
  end

  def edit
  end

  def create
    @series = Series.new(params[:series])
    @series.save
#    respond_with(@series)
    redirect_to series_index_path
  end

  def update
    @series.update_attributes(params[:series])
#    respond_with(@series)
    redirect_to series_index_path
  end

  def destroy
    @series.destroy
#    respond_with(@series)
    redirect_to series_index_path
  end

  private
    def set_series
      @series = Series.find(params[:id])
    end
end
