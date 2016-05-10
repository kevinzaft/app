class WirelessRoutersController < ApplicationController
  before_action :set_wireless_router, only: [:show, :edit, :update, :destroy]

  # GET /wireless_routers
  # GET /wireless_routers.json
  def index
    @wireless_routers = WirelessRouter.all
  end

  # GET /wireless_routers/1
  # GET /wireless_routers/1.json
  def show
  end

  # GET /wireless_routers/new
  def new
    @wireless_router = WirelessRouter.new
  end

  # GET /wireless_routers/1/edit
  def edit
  end

  # POST /wireless_routers
  # POST /wireless_routers.json
  def create
    @wireless_router = WirelessRouter.new(wireless_router_params)

    respond_to do |format|
      if @wireless_router.save
        format.html { redirect_to @wireless_router, notice: 'Wireless router was successfully created.' }
        format.json { render :show, status: :created, location: @wireless_router }
      else
        format.html { render :new }
        format.json { render json: @wireless_router.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wireless_routers/1
  # PATCH/PUT /wireless_routers/1.json
  def update
    respond_to do |format|
      if @wireless_router.update(wireless_router_params)
        format.html { redirect_to @wireless_router, notice: 'Wireless router was successfully updated.' }
        format.json { render :show, status: :ok, location: @wireless_router }
      else
        format.html { render :edit }
        format.json { render json: @wireless_router.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wireless_routers/1
  # DELETE /wireless_routers/1.json
  def destroy
    @wireless_router.destroy
    respond_to do |format|
      format.html { redirect_to wireless_routers_url, notice: 'Wireless router was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wireless_router
      @wireless_router = WirelessRouter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wireless_router_params
      params.require(:wireless_router).permit(:name, :price, :code, :brand, :brandmodel, :standards, :devicemanagement, :secrurity, :wpawpa2, :wanports, :lanports, :led, :buttons, :wirelessdatarates, :frequencyband, :antenna, :channels, :transmittedpower, :interface, :poweradapter, :wirelessadapterincuded, :systemrequirements, :dimensions, :weight, :temperature, :humidity, :features, :package, :warranty, :other)
    end
end
