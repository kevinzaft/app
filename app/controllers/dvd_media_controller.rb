class DvdMediaController < ApplicationController
  before_action :set_dvd_medium, only: [:show, :edit, :update, :destroy]

  # GET /dvd_media
  # GET /dvd_media.json
  def index
    @dvd_media = DvdMedium.all
  end

  # GET /dvd_media/1
  # GET /dvd_media/1.json
  def show
  end

  # GET /dvd_media/new
  def new
    @dvd_medium = DvdMedium.new
  end

  # GET /dvd_media/1/edit
  def edit
  end

  # POST /dvd_media
  # POST /dvd_media.json
  def create
    @dvd_medium = DvdMedium.new(dvd_medium_params)

    respond_to do |format|
      if @dvd_medium.save
        format.html { redirect_to @dvd_medium, notice: 'Dvd medium was successfully created.' }
        format.json { render :show, status: :created, location: @dvd_medium }
      else
        format.html { render :new }
        format.json { render json: @dvd_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dvd_media/1
  # PATCH/PUT /dvd_media/1.json
  def update
    respond_to do |format|
      if @dvd_medium.update(dvd_medium_params)
        format.html { redirect_to @dvd_medium, notice: 'Dvd medium was successfully updated.' }
        format.json { render :show, status: :ok, location: @dvd_medium }
      else
        format.html { render :edit }
        format.json { render json: @dvd_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dvd_media/1
  # DELETE /dvd_media/1.json
  def destroy
    @dvd_medium.destroy
    respond_to do |format|
      format.html { redirect_to dvd_media_url, notice: 'Dvd medium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dvd_medium
      @dvd_medium = DvdMedium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dvd_medium_params
      params.require(:dvd_medium).permit(:name, :price, :code, :brand, :brandmodel, :mediatype, :capacity, :maxspeedsupported, :quantity, :features, :packaging, :other)
    end
end
