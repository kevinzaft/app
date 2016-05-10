class BlurayStoragesController < ApplicationController
  before_action :set_bluray_storage, only: [:show, :edit, :update, :destroy]

  # GET /bluray_storages
  # GET /bluray_storages.json
  def index
    @bluray_storages = BlurayStorage.all
  end

  # GET /bluray_storages/1
  # GET /bluray_storages/1.json
  def show
  end

  # GET /bluray_storages/new
  def new
    @bluray_storage = BlurayStorage.new
  end

  # GET /bluray_storages/1/edit
  def edit
  end

  # POST /bluray_storages
  # POST /bluray_storages.json
  def create
    @bluray_storage = BlurayStorage.new(bluray_storage_params)

    respond_to do |format|
      if @bluray_storage.save
        format.html { redirect_to @bluray_storage, notice: 'Bluray storage was successfully created.' }
        format.json { render :show, status: :created, location: @bluray_storage }
      else
        format.html { render :new }
        format.json { render json: @bluray_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bluray_storages/1
  # PATCH/PUT /bluray_storages/1.json
  def update
    respond_to do |format|
      if @bluray_storage.update(bluray_storage_params)
        format.html { redirect_to @bluray_storage, notice: 'Bluray storage was successfully updated.' }
        format.json { render :show, status: :ok, location: @bluray_storage }
      else
        format.html { render :edit }
        format.json { render json: @bluray_storage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bluray_storages/1
  # DELETE /bluray_storages/1.json
  def destroy
    @bluray_storage.destroy
    respond_to do |format|
      format.html { redirect_to bluray_storages_url, notice: 'Bluray storage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bluray_storage
      @bluray_storage = BlurayStorage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bluray_storage_params
      params.require(:bluray_storage).permit(:name, :price, :code, :brand, :brandmodel, :storagetype, :capacity, :maxspeedsupported, :quantity, :surfacetop, :features, :packaging, :other)
    end
end
