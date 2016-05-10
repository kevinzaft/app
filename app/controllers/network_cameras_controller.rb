class NetworkCamerasController < ApplicationController
  before_action :set_network_camera, only: [:show, :edit, :update, :destroy]

  # GET /network_cameras
  # GET /network_cameras.json
  def index
    @network_cameras = NetworkCamera.all
  end

  # GET /network_cameras/1
  # GET /network_cameras/1.json
  def show
  end

  # GET /network_cameras/new
  def new
    @network_camera = NetworkCamera.new
  end

  # GET /network_cameras/1/edit
  def edit
  end

  # POST /network_cameras
  # POST /network_cameras.json
  def create
    @network_camera = NetworkCamera.new(network_camera_params)

    respond_to do |format|
      if @network_camera.save
        format.html { redirect_to @network_camera, notice: 'Network camera was successfully created.' }
        format.json { render :show, status: :created, location: @network_camera }
      else
        format.html { render :new }
        format.json { render json: @network_camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /network_cameras/1
  # PATCH/PUT /network_cameras/1.json
  def update
    respond_to do |format|
      if @network_camera.update(network_camera_params)
        format.html { redirect_to @network_camera, notice: 'Network camera was successfully updated.' }
        format.json { render :show, status: :ok, location: @network_camera }
      else
        format.html { render :edit }
        format.json { render json: @network_camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /network_cameras/1
  # DELETE /network_cameras/1.json
  def destroy
    @network_camera.destroy
    respond_to do |format|
      format.html { redirect_to network_cameras_url, notice: 'Network camera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network_camera
      @network_camera = NetworkCamera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def network_camera_params
      params.require(:network_camera).permit(:name, :price, :code, :brand, :brandmodel, :cameratype, :connectiontype, :wirelessstandard, :wirelessdatarate, :ports, :networkingprotocol, :zoom, :sensor, :maxres, :videocaptureres, :framerate, :lenstype, :security, :os, :features, :warranty, :other)
    end
end
