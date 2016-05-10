class NetworkAdaptersController < ApplicationController
  before_action :set_network_adapter, only: [:show, :edit, :update, :destroy]

  # GET /network_adapters
  # GET /network_adapters.json
  def index
    @network_adapters = NetworkAdapter.all
  end

  # GET /network_adapters/1
  # GET /network_adapters/1.json
  def show
  end

  # GET /network_adapters/new
  def new
    @network_adapter = NetworkAdapter.new
  end

  # GET /network_adapters/1/edit
  def edit
  end

  # POST /network_adapters
  # POST /network_adapters.json
  def create
    @network_adapter = NetworkAdapter.new(network_adapter_params)

    respond_to do |format|
      if @network_adapter.save
        format.html { redirect_to @network_adapter, notice: 'Network adapter was successfully created.' }
        format.json { render :show, status: :created, location: @network_adapter }
      else
        format.html { render :new }
        format.json { render json: @network_adapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /network_adapters/1
  # PATCH/PUT /network_adapters/1.json
  def update
    respond_to do |format|
      if @network_adapter.update(network_adapter_params)
        format.html { redirect_to @network_adapter, notice: 'Network adapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @network_adapter }
      else
        format.html { render :edit }
        format.json { render json: @network_adapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /network_adapters/1
  # DELETE /network_adapters/1.json
  def destroy
    @network_adapter.destroy
    respond_to do |format|
      format.html { redirect_to network_adapters_url, notice: 'Network adapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network_adapter
      @network_adapter = NetworkAdapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def network_adapter_params
      params.require(:network_adapter).permit(:name, :price, :code, :brand, :brandmodel, :standards, :wirelessdatarates, :security, :interface, :frequencyband, :channels, :modulation, :transmittedpower, :antenna, :color, :systemrequirements, :features, :dimenstions, :weight, :temperature, :humidity, :package, :other, :warranty)
    end
end
