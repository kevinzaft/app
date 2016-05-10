class HomeTheaterSystemsController < ApplicationController
  before_action :set_home_theater_system, only: [:show, :edit, :update, :destroy]

  # GET /home_theater_systems
  # GET /home_theater_systems.json
  def index
    @home_theater_systems = HomeTheaterSystem.all
  end

  # GET /home_theater_systems/1
  # GET /home_theater_systems/1.json
  def show
  end

  # GET /home_theater_systems/new
  def new
    @home_theater_system = HomeTheaterSystem.new
  end

  # GET /home_theater_systems/1/edit
  def edit
  end

  # POST /home_theater_systems
  # POST /home_theater_systems.json
  def create
    @home_theater_system = HomeTheaterSystem.new(home_theater_system_params)

    respond_to do |format|
      if @home_theater_system.save
        format.html { redirect_to @home_theater_system, notice: 'Home theater system was successfully created.' }
        format.json { render :show, status: :created, location: @home_theater_system }
      else
        format.html { render :new }
        format.json { render json: @home_theater_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_theater_systems/1
  # PATCH/PUT /home_theater_systems/1.json
  def update
    respond_to do |format|
      if @home_theater_system.update(home_theater_system_params)
        format.html { redirect_to @home_theater_system, notice: 'Home theater system was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_theater_system }
      else
        format.html { render :edit }
        format.json { render json: @home_theater_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_theater_systems/1
  # DELETE /home_theater_systems/1.json
  def destroy
    @home_theater_system.destroy
    respond_to do |format|
      format.html { redirect_to home_theater_systems_url, notice: 'Home theater system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_theater_system
      @home_theater_system = HomeTheaterSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_theater_system_params
      params.require(:home_theater_system).permit(:name, :price, :code, :brand, :homemodel, :channels, :speakerpowerrating, :speakerfrequency, :features, :dimensions, :other, :warranty)
    end
end
