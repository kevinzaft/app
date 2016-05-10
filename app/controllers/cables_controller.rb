class CablesController < ApplicationController

	def index

		@cables = Cable.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
									#The .all gets all of the cable and pits it in an array
		render("index")
	end

	def show
    @cable = Cable.find(params[:id])
    render("show")
    end

    def new
    @cable = Cable.new
    render("new")
    end

    def create
    cable_params = params.require(:cable).permit(:name, :code,:price, :description, :cabletype)
    @cable = Cable.new(cable_params)
    if @cable.save
      redirect_to("/cables/#{@cable.id}")
    else
      render("new")
    end
    end

    def edit
        @cable = Cable.find(params[:id])
        render ("edit")
    end

    def update
    @cable = Cable.find(params[:id])

    cable_params = params.require(:cable).permit(:name, :code,:price, :description, :cabletype)

    if @cable.update(cable_params)
      redirect_to("/cables/#{@cable.id}")
    else
      render("edit")
    end
    end

    def destroy
    @cable = Cable.find(params[:id])
    @cable.destroy
    redirect_to cables_path
    end

  


end