class PowerProtectionsController < ApplicationController

    def index

        @power_protections = PowerProtection.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the power_protection and pits it in an array
        render("index")
    end

    def show
    @power_protection = PowerProtection.find(params[:id])
    render("show")
    end

    def new
    @power_protection = PowerProtection.new
    render("new")
    end

    def create
    power_protection_params = params.require(:power_protection).permit(:name, :code,:price, :pptype,:general,:technical,:battery, :power,:physical,:warranty,:other)
    @power_protection = PowerProtection.new(power_protection_params)
    if @power_protection.save
      redirect_to("/power_protections/#{@power_protection.id}")
    else
      render("new")
    end
    end

    def edit
        @power_protection = PowerProtection.find(params[:id])
        render ("edit")
    end

    def update
    @power_protection = PowerProtection.find(params[:id])

    power_protection_params = params.require(:power_protection).permit(:name, :code,:price, :pptype,:general,:technical,:battery, :power,:physical,:warranty,:other)

    if @power_protection.update(power_protection_params)
      redirect_to("/power_protections/#{@power_protection.id}")
    else
      render("edit")
    end
    end

    def destroy
    @power_protection = PowerProtection.find(params[:id])
    @power_protection.destroy
    redirect_to power_protections_path
    end

  


end