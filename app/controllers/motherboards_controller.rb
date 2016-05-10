class MotherboardsController < ApplicationController

    def index

        @motherboards = Motherboard.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the motherboard and pits it in an array
        render("index")
    end

    def show
    @motherboard = Motherboard.find(params[:id])
    render("show")
    end

    def new
    @motherboard = Motherboard.new
    render("new")
    end

    def create
    motherboard_params = params.require(:motherboard).permit(:name, :code,:price, :motherboardtype, :formfactor, :cpu, :chipset, :memory, :graphic,:multigpu,:expansion,:storage,:lan,:audio,:usb,:workstation,:special,:backio,:internalio,:accessories,:bios,:manageability,:supportdisc,:os,:other)
    @motherboard = Motherboard.new(motherboard_params)
    if @motherboard.save
      redirect_to("/motherboards/#{@motherboard.id}")
    else
      render("new")
    end
    end

    def edit
        @motherboard = Motherboard.find(params[:id])
        render ("edit")
    end

    def update
    @motherboard = Motherboard.find(params[:id])

    motherboard_params = params.require(:motherboard).permit(:name, :code,:price, :motherboardtype, :formfactor, :cpu, :chipset, :memory, :graphic,:multigpu,:expansion,:storage,:lan,:audio,:usb,:workstation,:special,:backio,:internalio,:accessories,:bios,:manageability,:supportdisc,:os,:other)

    if @motherboard.update(motherboard_params)
      redirect_to("/motherboards/#{@motherboard.id}")
    else
      render("edit")
    end
    end

    def destroy
    @motherboard = Motherboard.find(params[:id])
    @motherboard.destroy
    redirect_to motherboards_path
    end

  


end