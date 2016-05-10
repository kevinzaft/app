class HomeOfficesController < ApplicationController
  before_action :set_home_office, only: [:show, :edit, :update, :destroy]

  # GET /home_offices
  # GET /home_offices.json
  def index
    @home_offices = HomeOffice.all
  end

  # GET /home_offices/1
  # GET /home_offices/1.json
  def show
  end

  # GET /home_offices/new
  def new
    @home_office = HomeOffice.new
  end

  # GET /home_offices/1/edit
  def edit
  end

  # POST /home_offices
  # POST /home_offices.json
  def create
    @home_office = HomeOffice.new(home_office_params)

    respond_to do |format|
      if @home_office.save
        format.html { redirect_to @home_office, notice: 'Home office was successfully created.' }
        format.json { render :show, status: :created, location: @home_office }
      else
        format.html { render :new }
        format.json { render json: @home_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_offices/1
  # PATCH/PUT /home_offices/1.json
  def update
    respond_to do |format|
      if @home_office.update(home_office_params)
        format.html { redirect_to @home_office, notice: 'Home office was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_office }
      else
        format.html { render :edit }
        format.json { render json: @home_office.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_offices/1
  # DELETE /home_offices/1.json
  def destroy
    @home_office.destroy
    respond_to do |format|
      format.html { redirect_to home_offices_url, notice: 'Home office was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_office
      @home_office = HomeOffice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_office_params
      params.require(:home_office).permit(:name, :price, :code, :brand, :brandmodel, :officetype, :name, :version, :os, :systemrequirements, :features, :warranty, :other)
    end
end
