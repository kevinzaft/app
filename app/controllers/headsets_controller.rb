class HeadsetsController < ApplicationController

    def index

        @headsets = Headset.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the headset and pits it in an array
        render("index")
    end

    def show
    @headset = Headset.find(params[:id])
    render("show")
    end

    def new
    @headset = Headset.new
    render("new")
    end

    def create
    headset_params = params.require(:headset).permit(:name, :code,:price, :headsettype,:brand,:headsetmodel,:connection,:design,:frequency,:impedance,:sensitivity,:connectors,:warranty,:platform,:other)
    @headset = Headset.new(headset_params)
    if @headset.save
      redirect_to("/headsets/#{@headset.id}")
    else
      render("new")
    end
    end

    def edit
        @headset = Headset.find(params[:id])
        render ("edit")
    end

    def update
    @headset = Headset.find(params[:id])

    headset_params = params.require(:headset).permit(:name, :code,:price, :headsettype,:brand,:headsetmodel,:connection,:design,:frequency,:impedance,:sensitivity,:connectors,:warranty,:platform,:other)

    if @headset.update(headset_params)
      redirect_to("/headsets/#{@headset.id}")
    else
      render("edit")
    end
    end

    def destroy
    @headset = Headset.find(params[:id])
    @headset.destroy
    redirect_to headsets_path
    end

  


end