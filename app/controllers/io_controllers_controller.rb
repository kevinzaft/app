class IoControllersController < ApplicationController

    def index

        @io_controllers = IoController.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the io_controller and pits it in an array
        render("index")
    end

    def show
    @io_controller = IoController.find(params[:id])
    render("show")
    end

    def new
    @io_controller = IoController.new
    render("new")
    end

    def create
    io_controller_params = params.require(:io_controller).permit(:name, :code,:price, :brand, :iomodel, :spec, :dimensions, :requirements, :other)
    @io_controller = IoController.new(io_controller_params)
    if @io_controller.save
      redirect_to("/io_controllers/#{@io_controller.id}")
    else
      render("new")
    end
    end

    def edit
        @io_controller = IoController.find(params[:id])
        render ("edit")
    end

    def update
    @io_controller = IoController.find(params[:id])

    io_controller_params = params.require(:io_controller).permit(:name, :code,:price, :brand, :iomodel, :spec, :dimensions, :requirements, :other)

    if @io_controller.update(io_controller_params)
      redirect_to("/io_controllers/#{@io_controller.id}")
    else
      render("edit")
    end
    end

    def destroy
    @io_controller = IoController.find(params[:id])
    @io_controller.destroy
    redirect_to io_controllers_path
    end

  


end