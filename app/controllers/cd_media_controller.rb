class CdMediaController < ApplicationController
  before_action :set_cd_medium, only: [:show, :edit, :update, :destroy]

  # GET /cd_media
  # GET /cd_media.json
  def index
    @cd_media = CdMedium.all
  end

  # GET /cd_media/1
  # GET /cd_media/1.json
  def show
  end

  # GET /cd_media/new
  def new
    @cd_medium = CdMedium.new
  end

  # GET /cd_media/1/edit
  def edit
  end

  # POST /cd_media
  # POST /cd_media.json
  def create
    @cd_medium = CdMedium.new(cd_medium_params)

    respond_to do |format|
      if @cd_medium.save
        format.html { redirect_to @cd_medium, notice: 'Cd medium was successfully created.' }
        format.json { render :show, status: :created, location: @cd_medium }
      else
        format.html { render :new }
        format.json { render json: @cd_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cd_media/1
  # PATCH/PUT /cd_media/1.json
  def update
    respond_to do |format|
      if @cd_medium.update(cd_medium_params)
        format.html { redirect_to @cd_medium, notice: 'Cd medium was successfully updated.' }
        format.json { render :show, status: :ok, location: @cd_medium }
      else
        format.html { render :edit }
        format.json { render json: @cd_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cd_media/1
  # DELETE /cd_media/1.json
  def destroy
    @cd_medium.destroy
    respond_to do |format|
      format.html { redirect_to cd_media_url, notice: 'Cd medium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cd_medium
      @cd_medium = CdMedium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cd_medium_params
      params.require(:cd_medium).permit(:name, :price, :code, :brand, :brandmodel, :mediatype, :capacity, :recordtime, :maxspeedsupported, :quantity, :features, :packaging, :other)
    end
end
