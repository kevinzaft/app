class FlashDigitalsController < ApplicationController

    def index

        @flash_digitals = FlashDigital.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the flash_digital and pits it in an array
        render("index")
    end

    def show
    @flash_digital = FlashDigital.find(params[:id])
    render("show")
    end

    def new
    @flash_digital = FlashDigital.new
    render("new")
    end

    def create
    flash_digital_params = params.require(:flash_digital).permit(:name, :code,:price, :capacity, :color, :dimensions, :weight, :interface, :readspeed,:writespeed,:systemrequirements, :warranty, :note, :storagetype,:brand)
    @flash_digital = FlashDigital.new(flash_digital_params)
    if @flash_digital.save
      redirect_to("/flash_digitals/#{@flash_digital.id}")
    else
      render("new")
    end
    end

    def edit
        @flash_digital = FlashDigital.find(params[:id])
        render ("edit")
    end

    def update
    @flash_digital = FlashDigital.find(params[:id])

    flash_digital_params = params.require(:flash_digital).permit(:name, :code,:price, :capacity, :color, :dimensions, :weight, :interface, :readspeed,:writespeed,:systemrequirements, :warranty, :note, :storagetype,:brand)

    if @flash_digital.update(flash_digital_params)
      redirect_to("/flash_digitals/#{@flash_digital.id}")
    else
      render("edit")
    end
    end

    def destroy
    @flash_digital = FlashDigital.find(params[:id])
    @flash_digital.destroy
    redirect_to flash_digitals_path
    end

  


end