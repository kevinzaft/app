class SurveillancePowerSuppliesController < ApplicationController
  before_action :set_surveillance_power_supply, only: [:show, :edit, :update, :destroy]

  # GET /surveillance_power_supplies
  # GET /surveillance_power_supplies.json
  def index
    @surveillance_power_supplies = SurveillancePowerSupply.all
  end

  # GET /surveillance_power_supplies/1
  # GET /surveillance_power_supplies/1.json
  def show
  end

  # GET /surveillance_power_supplies/new
  def new
    @surveillance_power_supply = SurveillancePowerSupply.new
  end

  # GET /surveillance_power_supplies/1/edit
  def edit
  end

  # POST /surveillance_power_supplies
  # POST /surveillance_power_supplies.json
  def create
    @surveillance_power_supply = SurveillancePowerSupply.new(surveillance_power_supply_params)

    respond_to do |format|
      if @surveillance_power_supply.save
        format.html { redirect_to @surveillance_power_supply, notice: 'Surveillance power supply was successfully created.' }
        format.json { render :show, status: :created, location: @surveillance_power_supply }
      else
        format.html { render :new }
        format.json { render json: @surveillance_power_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveillance_power_supplies/1
  # PATCH/PUT /surveillance_power_supplies/1.json
  def update
    respond_to do |format|
      if @surveillance_power_supply.update(surveillance_power_supply_params)
        format.html { redirect_to @surveillance_power_supply, notice: 'Surveillance power supply was successfully updated.' }
        format.json { render :show, status: :ok, location: @surveillance_power_supply }
      else
        format.html { render :edit }
        format.json { render json: @surveillance_power_supply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveillance_power_supplies/1
  # DELETE /surveillance_power_supplies/1.json
  def destroy
    @surveillance_power_supply.destroy
    respond_to do |format|
      format.html { redirect_to surveillance_power_supplies_url, notice: 'Surveillance power supply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surveillance_power_supply
      @surveillance_power_supply = SurveillancePowerSupply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surveillance_power_supply_params
      params.require(:surveillance_power_supply).permit(:name, :price, :code, :supplytype, :brand, :brandmodel, :input, :output, :cordlength, :dimensions, :other)
    end
end
