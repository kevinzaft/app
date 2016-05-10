class NetworkingAccessoriesController < ApplicationController
  before_action :set_networking_accessory, only: [:show, :edit, :update, :destroy]

  # GET /networking_accessories
  # GET /networking_accessories.json
  def index
    @networking_accessories = NetworkingAccessory.all
  end

  # GET /networking_accessories/1
  # GET /networking_accessories/1.json
  def show
  end

  # GET /networking_accessories/new
  def new
    @networking_accessory = NetworkingAccessory.new
  end

  # GET /networking_accessories/1/edit
  def edit
  end

  # POST /networking_accessories
  # POST /networking_accessories.json
  def create
    @networking_accessory = NetworkingAccessory.new(networking_accessory_params)

    respond_to do |format|
      if @networking_accessory.save
        format.html { redirect_to @networking_accessory, notice: 'Networking accessory was successfully created.' }
        format.json { render :show, status: :created, location: @networking_accessory }
      else
        format.html { render :new }
        format.json { render json: @networking_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /networking_accessories/1
  # PATCH/PUT /networking_accessories/1.json
  def update
    respond_to do |format|
      if @networking_accessory.update(networking_accessory_params)
        format.html { redirect_to @networking_accessory, notice: 'Networking accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @networking_accessory }
      else
        format.html { render :edit }
        format.json { render json: @networking_accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /networking_accessories/1
  # DELETE /networking_accessories/1.json
  def destroy
    @networking_accessory.destroy
    respond_to do |format|
      format.html { redirect_to networking_accessories_url, notice: 'Networking accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_networking_accessory
      @networking_accessory = NetworkingAccessory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def networking_accessory_params
      params.require(:networking_accessory).permit(:name, :price, :code, :brand, :brandmodel, :accessorytype, :features, :color, :dimensions, :details, :other)
    end
end
