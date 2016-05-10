class AndroidTvsController < ApplicationController
  before_action :set_android_tv, only: [:show, :edit, :update, :destroy]

  # GET /android_tvs
  # GET /android_tvs.json
  def index
    @android_tvs = AndroidTv.all
  end

  # GET /android_tvs/1
  # GET /android_tvs/1.json
  def show
  end

  # GET /android_tvs/new
  def new
    @android_tv = AndroidTv.new
  end

  # GET /android_tvs/1/edit
  def edit
  end

  # POST /android_tvs
  # POST /android_tvs.json
  def create
    @android_tv = AndroidTv.new(android_tv_params)

    respond_to do |format|
      if @android_tv.save
        format.html { redirect_to @android_tv, notice: 'Android tv was successfully created.' }
        format.json { render :show, status: :created, location: @android_tv }
      else
        format.html { render :new }
        format.json { render json: @android_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /android_tvs/1
  # PATCH/PUT /android_tvs/1.json
  def update
    respond_to do |format|
      if @android_tv.update(android_tv_params)
        format.html { redirect_to @android_tv, notice: 'Android tv was successfully updated.' }
        format.json { render :show, status: :ok, location: @android_tv }
      else
        format.html { render :edit }
        format.json { render json: @android_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /android_tvs/1
  # DELETE /android_tvs/1.json
  def destroy
    @android_tv.destroy
    respond_to do |format|
      format.html { redirect_to android_tvs_url, notice: 'Android tv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_android_tv
      @android_tv = AndroidTv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def android_tv_params
      params.require(:android_tv).permit(:name, :price, :code, :brand, :series, :tvmodel, :os, :cputype, :cpuspeed, :cores, :tech, :screensize, :touchscreen, :lcdfeatures, :resolution, :webcam, :gpuvpu, :videomemory, :builtinstorage, :cardreader, :memory, :opticaldrive, :wlan, :bluetooth, :usbport, :hdmi, :audioports, :audio, :battery, :service, :otherfeatures, :warranty)
    end
end
