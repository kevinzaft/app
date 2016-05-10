class OtherMediaController < ApplicationController
  before_action :set_other_medium, only: [:show, :edit, :update, :destroy]

  # GET /other_media
  # GET /other_media.json
  def index
    @other_media = OtherMedium.all
  end

  # GET /other_media/1
  # GET /other_media/1.json
  def show
  end

  # GET /other_media/new
  def new
    @other_medium = OtherMedium.new
  end

  # GET /other_media/1/edit
  def edit
  end

  # POST /other_media
  # POST /other_media.json
  def create
    @other_medium = OtherMedium.new(other_medium_params)

    respond_to do |format|
      if @other_medium.save
        format.html { redirect_to @other_medium, notice: 'Other medium was successfully created.' }
        format.json { render :show, status: :created, location: @other_medium }
      else
        format.html { render :new }
        format.json { render json: @other_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_media/1
  # PATCH/PUT /other_media/1.json
  def update
    respond_to do |format|
      if @other_medium.update(other_medium_params)
        format.html { redirect_to @other_medium, notice: 'Other medium was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_medium }
      else
        format.html { render :edit }
        format.json { render json: @other_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_media/1
  # DELETE /other_media/1.json
  def destroy
    @other_medium.destroy
    respond_to do |format|
      format.html { redirect_to other_media_url, notice: 'Other medium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_medium
      @other_medium = OtherMedium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_medium_params
      params.require(:other_medium).permit(:name, :price, :code, :brand, :brandmodel, :mediatype, :capacity, :maxspeedsupported, :quantity, :features, :packaging, :other)
    end
end
