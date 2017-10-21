class ProvidersController < ApplicationController
  before_action :set_provider, only: [:show, :edit, :update, :destroy]

  # GET /providers
  def index
    @providers = Provider.order([:app_id, :name]).all
  end

  # GET /providers/1
  # def show
  # end

  # GET /providers/new
  def new
    @provider = Provider.new
    render_new
  end

  # GET /providers/1/edit
  def edit
    render_edit
  end

  # POST /providers
  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      redirect_to providers_path, notice: t('message.registered')
    else
      render_new
    end
  end

  # PATCH/PUT /providers/1
  def update
    if @provider.update(provider_params)
      redirect_to providers_path, notice: t('message.updated')
    else
      render_edit
    end
  end

  # DELETE /providers/1
  def destroy
    @provider.destroy
    redirect_to providers_path, notice: t('message.deleted')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def provider_params
      params.require(:provider).permit(:app_id, :name)
    end
end
