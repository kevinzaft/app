class TvMountsController < ApplicationController
  before_action :set_tv_mount, only: [:show, :edit, :update, :destroy]

  # GET /tv_mounts
  # GET /tv_mounts.json
  def index
    @tv_mounts = TvMount.all
  end

  # GET /tv_mounts/1
  # GET /tv_mounts/1.json
  def show
  end

  # GET /tv_mounts/new
  def new
    @tv_mount = TvMount.new
  end

  # GET /tv_mounts/1/edit
  def edit
  end

  # POST /tv_mounts
  # POST /tv_mounts.json
  def create
    @tv_mount = TvMount.new(tv_mount_params)

    respond_to do |format|
      if @tv_mount.save
        format.html { redirect_to @tv_mount, notice: 'Tv mount was successfully created.' }
        format.json { render :show, status: :created, location: @tv_mount }
      else
        format.html { render :new }
        format.json { render json: @tv_mount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_mounts/1
  # PATCH/PUT /tv_mounts/1.json
  def update
    respond_to do |format|
      if @tv_mount.update(tv_mount_params)
        format.html { redirect_to @tv_mount, notice: 'Tv mount was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_mount }
      else
        format.html { render :edit }
        format.json { render json: @tv_mount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_mounts/1
  # DELETE /tv_mounts/1.json
  def destroy
    @tv_mount.destroy
    respond_to do |format|
      format.html { redirect_to tv_mounts_url, notice: 'Tv mount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_mount
      @tv_mount = TvMount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_mount_params
      params.require(:tv_mount).permit(:name, :price, :code, :brand, :brandmodel, :tvsizecapacity, :tvweightcapacity, :vesacompatible, :features, :dimensions, :weight, :other, :warranty)
    end
end
