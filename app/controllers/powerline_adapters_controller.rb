class PowerlineAdaptersController < ApplicationController
  before_action :set_powerline_adapter, only: [:show, :edit, :update, :destroy]

  # GET /powerline_adapters
  # GET /powerline_adapters.json
  def index
    @powerline_adapters = PowerlineAdapter.all
  end

  # GET /powerline_adapters/1
  # GET /powerline_adapters/1.json
  def show
  end

  # GET /powerline_adapters/new
  def new
    @powerline_adapter = PowerlineAdapter.new
  end

  # GET /powerline_adapters/1/edit
  def edit
  end

  # POST /powerline_adapters
  # POST /powerline_adapters.json
  def create
    @powerline_adapter = PowerlineAdapter.new(powerline_adapter_params)

    respond_to do |format|
      if @powerline_adapter.save
        format.html { redirect_to @powerline_adapter, notice: 'Powerline adapter was successfully created.' }
        format.json { render :show, status: :created, location: @powerline_adapter }
      else
        format.html { render :new }
        format.json { render json: @powerline_adapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powerline_adapters/1
  # PATCH/PUT /powerline_adapters/1.json
  def update
    respond_to do |format|
      if @powerline_adapter.update(powerline_adapter_params)
        format.html { redirect_to @powerline_adapter, notice: 'Powerline adapter was successfully updated.' }
        format.json { render :show, status: :ok, location: @powerline_adapter }
      else
        format.html { render :edit }
        format.json { render json: @powerline_adapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powerline_adapters/1
  # DELETE /powerline_adapters/1.json
  def destroy
    @powerline_adapter.destroy
    respond_to do |format|
      format.html { redirect_to powerline_adapters_url, notice: 'Powerline adapter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_powerline_adapter
      @powerline_adapter = PowerlineAdapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def powerline_adapter_params
      params.require(:powerline_adapter).permit(:name, :price, :code, :brand, :brandmodel, :standards, :encryption, :ports, :led, :certifications, :powerlinespeeds, :connectiontype, :connectionspeeds, :kittype, :systemrequirements, :temperature, :humidity, :features, :dimensions, :weight, :other, :warranty)
    end
end
