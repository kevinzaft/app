class TvTunersController < ApplicationController
  before_action :set_tv_tuner, only: [:show, :edit, :update, :destroy]

  # GET /tv_tuners
  # GET /tv_tuners.json
  def index
    @tv_tuners = TvTuner.all
  end

  # GET /tv_tuners/1
  # GET /tv_tuners/1.json
  def show
  end

  # GET /tv_tuners/new
  def new
    @tv_tuner = TvTuner.new
  end

  # GET /tv_tuners/1/edit
  def edit
  end

  # POST /tv_tuners
  # POST /tv_tuners.json
  def create
    @tv_tuner = TvTuner.new(tv_tuner_params)

    respond_to do |format|
      if @tv_tuner.save
        format.html { redirect_to @tv_tuner, notice: 'Tv tuner was successfully created.' }
        format.json { render :show, status: :created, location: @tv_tuner }
      else
        format.html { render :new }
        format.json { render json: @tv_tuner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_tuners/1
  # PATCH/PUT /tv_tuners/1.json
  def update
    respond_to do |format|
      if @tv_tuner.update(tv_tuner_params)
        format.html { redirect_to @tv_tuner, notice: 'Tv tuner was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_tuner }
      else
        format.html { render :edit }
        format.json { render json: @tv_tuner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_tuners/1
  # DELETE /tv_tuners/1.json
  def destroy
    @tv_tuner.destroy
    respond_to do |format|
      format.html { redirect_to tv_tuners_url, notice: 'Tv tuner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_tuner
      @tv_tuner = TvTuner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_tuner_params
      params.require(:tv_tuner).permit(:name, :price, :code, :brand, :model, :tunertype, :tvtuner, :tvstandards, :remotecontrol, :videoencoding, :tunerinterface, :lowprofileready, :fmtuner, :videoformat, :portsin, :systemrequirments, :processor, :graphicscard, :availableslot, :os, :features, :packagecontent, :other)
    end
end
