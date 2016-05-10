class PcAccessoriesController < ApplicationController
  before_action :set_pc_accessory, only: [:show, :edit, :update, :destroy]

  # GET /pc_accessories
  # GET /pc_accessories.json
  def index
    @pc_accessories = PcAccessory.all
  end

  # GET /pc_accessories/1
  # GET /pc_accessories/1.json
  def show
  end

  # GET /pc_accessories/new
  def new
    @pc_accessory = PcAccessory.new
  end

  # GET /pc_accessories/1/edit
  def edit
  end

  # POST /pc_accessories
  # POST /pc_accessories.json
  def create
    @pc_accessory = PcAccessory.new(pc_accessory_params)

    respond_to do |format|
      if @pc_accessory.save
        format.html { redirect_to @pc_accessory, notice: 'Pc accessory was successfully created.' }
        format.json { render :show, status: :created, location: @pc_accessory }
      else
        format.html { render :new }
        format.json { render json: @pc_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_accessories/1
  # PATCH/PUT /pc_accessories/1.json
  def update
    respond_to do |format|
      if @pc_accessory.update(pc_accessory_params)
        format.html { redirect_to @pc_accessory, notice: 'Pc accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @pc_accessory }
      else
        format.html { render :edit }
        format.json { render json: @pc_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_accessories/1
  # DELETE /pc_accessories/1.json
  def destroy
    @pc_accessory.destroy
    respond_to do |format|
      format.html { redirect_to pc_accessories_url, notice: 'Pc accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_accessory
      @pc_accessory = PcAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pc_accessory_params
      params.require(:pc_accessory).permit(:name, :price, :code, :brand, :brandmodel, :casetype, :color, :fitmostscreensize, :capacity, :features, :dimensions, :weight, :warranty, :other)
    end
end
