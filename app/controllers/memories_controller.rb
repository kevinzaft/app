class MemoriesController < ApplicationController

    def index

        @memories = Memory.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the memory and pits it in an array
        render("index")
    end

    def show
    @memory = Memory.find(params[:id])
    render("show")
    end

    def new
    @memory = Memory.new
    render("new")
    end

    def create
    memory_params = params.require(:memory).permit(:name, :code,:price,:memorytype,:brand,:mpn,:manufacturer,:website,:marketinginfo,:productline,:producttype,:errorchecking,:memorysize,:memoryspeed,:memorystandard,:memorytech,:signalprocessing,:formfactor,:length,:pins,:width,:caslatency,:voltage,:modules)
    @memory = Memory.new(memory_params)
    if @memory.save
      redirect_to("/memories/#{@memory.id}")
    else
      render("new")
    end
    end

    def edit
        @memory = Memory.find(params[:id])
        render ("edit")
    end

    def update
    @memory = Memory.find(params[:id])

    memory_params = params.require(:memory).permit(:name, :code,:price,:memorytype,:brand,:mpn,:manufacturer,:website,:marketinginfo,:productline,:producttype,:errorchecking,:memorysize,:memoryspeed,:memorystandard,:memorytech,:signalprocessing,:formfactor,:length,:pins,:width,:caslatency,:voltage,:modules)

    if @memory.update(memory_params)
      redirect_to("/memories/#{@memory.id}")
    else
      render("edit")
    end
    end

    def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy
    redirect_to memories_path
    end

  


end