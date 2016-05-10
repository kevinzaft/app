class WirelessAdaptersController < ApplicationController
  before_action :set_wireless_adapter, only: [:show, :edit, :update, :destroy]

  # GET /wireless_adapters
  # GET /wireless_adapters.json
  def index
    @wireless_adapters = WirelessAdapter.all
  end

  # GET /wireless_adapters/1
  # GET /wireless_adapters/1.json
  def show
  end

  # GET /wireless_adapters/new
  def new
    @wireless_adapter = WirelessAdapter.new
  end

  # GET /wireless_adapters/1/edit
  def edit
  end

  # POST /wireless_adapters
  # POST /wireless_adapters.json
  def create
    @wireless_adapter = WirelessAdapter.new(wireless_adapter_params)

    respond_to do |format|
      if @wireless_adapter.save
        format.html { redirect_to @wireless_adapter, notice: 'Wireless adapter was successfully created.' }
        format.json { render :show, status: :created, location: @wireless_adapter }
      else
        format.html { render :new }
        format.json { render json: @wireless_adapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wireless_adapters/1
  # PATCH/PUT /wireless_adapters/1.json
  def update
    respond_to do |format|
      if @wireless_adapter.update(wireless_adapter_params)
        format.html { redirect_to @wireless_adapter, notice: 'Wireless adapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @wireless_adapter }
      else
        format.html { render :edit }
        format.json { render json: @wireless_adapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wireless_adapters/1
  # DELETE /wireless_adapters/1.json
  def destroy
    @wireless_adapter.destroy
    respond_to do |format|
      format.html { redirect_to wireless_adapters_url, notice: 'Wireless adapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wireless_adapter
      @wireless_adapter = WirelessAdapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wireless_adapter_params
      params.require(:wireless_adapter).permit(:name, :price, :code, :brand, :brandmodel, :standards, :wirelessdatarates, :security, :interface, :frequencyband, :channel, :modulation, :transmittedpower, :antenna, :color, :systemrequirements, :features, :dimensions, :weight, :temperature, :humidity, :package, :warranty, :other)
    end
end
