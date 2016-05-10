class PhoneAccessoriesController < ApplicationController
  before_action :set_phone_accessory, only: [:show, :edit, :update, :destroy]

  # GET /phone_accessories
  # GET /phone_accessories.json
  def index
    @phone_accessories = PhoneAccessory.all
  end

  # GET /phone_accessories/1
  # GET /phone_accessories/1.json
  def show
  end

  # GET /phone_accessories/new
  def new
    @phone_accessory = PhoneAccessory.new
  end

  # GET /phone_accessories/1/edit
  def edit
  end

  # POST /phone_accessories
  # POST /phone_accessories.json
  def create
    @phone_accessory = PhoneAccessory.new(phone_accessory_params)

    respond_to do |format|
      if @phone_accessory.save
        format.html { redirect_to @phone_accessory, notice: 'Phone accessory was successfully created.' }
        format.json { render :show, status: :created, location: @phone_accessory }
      else
        format.html { render :new }
        format.json { render json: @phone_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_accessories/1
  # PATCH/PUT /phone_accessories/1.json
  def update
    respond_to do |format|
      if @phone_accessory.update(phone_accessory_params)
        format.html { redirect_to @phone_accessory, notice: 'Phone accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_accessory }
      else
        format.html { render :edit }
        format.json { render json: @phone_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_accessories/1
  # DELETE /phone_accessories/1.json
  def destroy
    @phone_accessory.destroy
    respond_to do |format|
      format.html { redirect_to phone_accessories_url, notice: 'Phone accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_accessory
      @phone_accessory = PhoneAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_accessory_params
      params.require(:phone_accessory).permit(:name, :price, :code, :brand, :accessorymodel, :accessorytype, :compatiblilty, :features, :dimensions, :other)
    end
end
