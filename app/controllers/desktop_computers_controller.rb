class DesktopComputersController < ApplicationController
  before_action :set_desktop_computer, only: [:show, :edit, :update, :destroy]

  # GET /desktop_computers
  # GET /desktop_computers.json
  def index
    @desktop_computers = DesktopComputer.all
  end

  # GET /desktop_computers/1
  # GET /desktop_computers/1.json
  def show
  end

  # GET /desktop_computers/new
  def new
    @desktop_computer = DesktopComputer.new
  end

  # GET /desktop_computers/1/edit
  def edit
  end

  # POST /desktop_computers
  # POST /desktop_computers.json
  def create
    @desktop_computer = DesktopComputer.new(desktop_computer_params)

    respond_to do |format|
      if @desktop_computer.save
        format.html { redirect_to @desktop_computer, notice: 'Desktop computer was successfully created.' }
        format.json { render :show, status: :created, location: @desktop_computer }
      else
        format.html { render :new }
        format.json { render json: @desktop_computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desktop_computers/1
  # PATCH/PUT /desktop_computers/1.json
  def update
    respond_to do |format|
      if @desktop_computer.update(desktop_computer_params)
        format.html { redirect_to @desktop_computer, notice: 'Desktop computer was successfully updated.' }
        format.json { render :show, status: :ok, location: @desktop_computer }
      else
        format.html { render :edit }
        format.json { render json: @desktop_computer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desktop_computers/1
  # DELETE /desktop_computers/1.json
  def destroy
    @desktop_computer.destroy
    respond_to do |format|
      format.html { redirect_to desktop_computers_url, notice: 'Desktop computer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desktop_computer
      @desktop_computer = DesktopComputer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desktop_computer_params
      params.require(:desktop_computer).permit(:name, :price, :code, :brand, :brandmodel, :desktoptype, :usage, :colors, :processor, :processormainfeatures, :cacheperprocessor, :memory, :storage, :opticaldrive, :graphics, :audio, :ethernet, :powersupply, :keyboard, :mouse, :os, :specialfeatures, :cputype, :cpuspeed, :l2cachepercpu, :l3cachepercpu, :cpusockettype, :cpumainfeatures, :gpuvgatype, :memorycapacity, :memoryspeed, :memoryspec, :memoryslot, :maxmemorysupported, :hdd, :hddinterface, :hddrpm, :opticaldrivetype, :opticaldrivespec, :audiochipset, :audiochannels, :lanchipset, :lanspeed, :frontusb, :ps2, :videoports, :rearusb, :rj45, :rearaudioports, :pcislots, :mousetype, :keyboardtype, :dimensions, :weight, :warranty, :other)
    end
end
