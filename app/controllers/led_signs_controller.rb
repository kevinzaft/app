class LedSignsController < ApplicationController
  before_action :set_led_sign, only: [:show, :edit, :update, :destroy]

  # GET /led_signs
  # GET /led_signs.json
  def index
    @led_signs = LedSign.all
  end

  # GET /led_signs/1
  # GET /led_signs/1.json
  def show
  end

  # GET /led_signs/new
  def new
    @led_sign = LedSign.new
  end

  # GET /led_signs/1/edit
  def edit
  end

  # POST /led_signs
  # POST /led_signs.json
  def create
    @led_sign = LedSign.new(led_sign_params)

    respond_to do |format|
      if @led_sign.save
        format.html { redirect_to @led_sign, notice: 'Led sign was successfully created.' }
        format.json { render :show, status: :created, location: @led_sign }
      else
        format.html { render :new }
        format.json { render json: @led_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /led_signs/1
  # PATCH/PUT /led_signs/1.json
  def update
    respond_to do |format|
      if @led_sign.update(led_sign_params)
        format.html { redirect_to @led_sign, notice: 'Led sign was successfully updated.' }
        format.json { render :show, status: :ok, location: @led_sign }
      else
        format.html { render :edit }
        format.json { render json: @led_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /led_signs/1
  # DELETE /led_signs/1.json
  def destroy
    @led_sign.destroy
    respond_to do |format|
      format.html { redirect_to led_signs_url, notice: 'Led sign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_led_sign
      @led_sign = LedSign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def led_sign_params
      params.require(:led_sign).permit(:name, :price, :code, :signmodel, :colors, :volts, :datatransfer, :features, :dimensions, :weight, :other)
    end
end
