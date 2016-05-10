class SurveillanceCablesController < ApplicationController
  before_action :set_surveillance_cable, only: [:show, :edit, :update, :destroy]

  # GET /surveillance_cables
  # GET /surveillance_cables.json
  def index
    @surveillance_cables = SurveillanceCable.all
  end

  # GET /surveillance_cables/1
  # GET /surveillance_cables/1.json
  def show
  end

  # GET /surveillance_cables/new
  def new
    @surveillance_cable = SurveillanceCable.new
  end

  # GET /surveillance_cables/1/edit
  def edit
  end

  # POST /surveillance_cables
  # POST /surveillance_cables.json
  def create
    @surveillance_cable = SurveillanceCable.new(surveillance_cable_params)

    respond_to do |format|
      if @surveillance_cable.save
        format.html { redirect_to @surveillance_cable, notice: 'Surveillance cable was successfully created.' }
        format.json { render :show, status: :created, location: @surveillance_cable }
      else
        format.html { render :new }
        format.json { render json: @surveillance_cable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveillance_cables/1
  # PATCH/PUT /surveillance_cables/1.json
  def update
    respond_to do |format|
      if @surveillance_cable.update(surveillance_cable_params)
        format.html { redirect_to @surveillance_cable, notice: 'Surveillance cable was successfully updated.' }
        format.json { render :show, status: :ok, location: @surveillance_cable }
      else
        format.html { render :edit }
        format.json { render json: @surveillance_cable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveillance_cables/1
  # DELETE /surveillance_cables/1.json
  def destroy
    @surveillance_cable.destroy
    respond_to do |format|
      format.html { redirect_to surveillance_cables_url, notice: 'Surveillance cable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surveillance_cable
      @surveillance_cable = SurveillanceCable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surveillance_cable_params
      params.require(:surveillance_cable).permit(:name, :price, :code, :brand, :brandmodel, :cat, :length, :color, :shielded, :features, :other)
    end
end
