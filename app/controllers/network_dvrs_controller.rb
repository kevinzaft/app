class NetworkDvrsController < ApplicationController
  before_action :set_network_dvr, only: [:show, :edit, :update, :destroy]

  # GET /network_dvrs
  # GET /network_dvrs.json
  def index
    @network_dvrs = NetworkDvr.all
  end

  # GET /network_dvrs/1
  # GET /network_dvrs/1.json
  def show
  end

  # GET /network_dvrs/new
  def new
    @network_dvr = NetworkDvr.new
  end

  # GET /network_dvrs/1/edit
  def edit
  end

  # POST /network_dvrs
  # POST /network_dvrs.json
  def create
    @network_dvr = NetworkDvr.new(network_dvr_params)

    respond_to do |format|
      if @network_dvr.save
        format.html { redirect_to @network_dvr, notice: 'Network dvr was successfully created.' }
        format.json { render :show, status: :created, location: @network_dvr }
      else
        format.html { render :new }
        format.json { render json: @network_dvr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /network_dvrs/1
  # PATCH/PUT /network_dvrs/1.json
  def update
    respond_to do |format|
      if @network_dvr.update(network_dvr_params)
        format.html { redirect_to @network_dvr, notice: 'Network dvr was successfully updated.' }
        format.json { render :show, status: :ok, location: @network_dvr }
      else
        format.html { render :edit }
        format.json { render json: @network_dvr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /network_dvrs/1
  # DELETE /network_dvrs/1.json
  def destroy
    @network_dvr.destroy
    respond_to do |format|
      format.html { redirect_to network_dvrs_url, notice: 'Network dvr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network_dvr
      @network_dvr = NetworkDvr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def network_dvr_params
      params.require(:network_dvr).permit(:name, :price, :code, :brand, :brandmodel, :supportedprotocols, :networkinterface, :videoinput, :videooutput, :framerate, :compressionformat, :storagecapacity, :powersupply, :temerature, :humidity, :dimensions, :weight, :warranty, :other)
    end
end
