class SecurityCamerasController < ApplicationController
  before_action :set_security_camera, only: [:show, :edit, :update, :destroy]

  # GET /security_cameras
  # GET /security_cameras.json
  def index
    @security_cameras = SecurityCamera.all
  end

  # GET /security_cameras/1
  # GET /security_cameras/1.json
  def show
  end

  # GET /security_cameras/new
  def new
    @security_camera = SecurityCamera.new
  end

  # GET /security_cameras/1/edit
  def edit
  end

  # POST /security_cameras
  # POST /security_cameras.json
  def create
    @security_camera = SecurityCamera.new(security_camera_params)

    respond_to do |format|
      if @security_camera.save
        format.html { redirect_to @security_camera, notice: 'Security camera was successfully created.' }
        format.json { render :show, status: :created, location: @security_camera }
      else
        format.html { render :new }
        format.json { render json: @security_camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /security_cameras/1
  # PATCH/PUT /security_cameras/1.json
  def update
    respond_to do |format|
      if @security_camera.update(security_camera_params)
        format.html { redirect_to @security_camera, notice: 'Security camera was successfully updated.' }
        format.json { render :show, status: :ok, location: @security_camera }
      else
        format.html { render :edit }
        format.json { render json: @security_camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_cameras/1
  # DELETE /security_cameras/1.json
  def destroy
    @security_camera.destroy
    respond_to do |format|
      format.html { redirect_to security_cameras_url, notice: 'Security camera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_security_camera
      @security_camera = SecurityCamera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def security_camera_params
      params.require(:security_camera).permit(:name, :price, :code, :brand, :brandmodel, :color, :securitycameratype, :cameratype, :wirelessdatarate, :sensor, :maxres, :videocaptureres, :lenstype, :shuttercontrol, :nightvision, :features, :package, :warranty, :other)
    end
end
