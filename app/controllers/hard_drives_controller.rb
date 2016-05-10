class HardDrivesController < ApplicationController

    def index

        @hard_drives = HardDrive.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the hard_drive and pits it in an array
        render("index")
    end

    def show
    @hard_drive = HardDrive.find(params[:id])
    render("show")
    end

    def new
    @hard_drive = HardDrive.new
    render("new")
    end

    def create
    hard_drive_params = params.require(:hard_drive).permit(:name, :code,:price, :drivetype,:capacity,:color,:dimensions,:weight,:interface,:texture,:warranty,:voltage,:requirements,:accessories,:temperature)
    @hard_drive = HardDrive.new(hard_drive_params)
    if @hard_drive.save
      redirect_to("/hard_drives/#{@hard_drive.id}")
    else
      render("new")
    end
    end

    def edit
        @hard_drive = HardDrive.find(params[:id])
        render ("edit")
    end

    def update
    @hard_drive = HardDrive.find(params[:id])

    hard_drive_params = params.require(:hard_drive).permit(:name, :code,:price, :drivetype,:capacity,:color,:dimensions,:weight,:interface,:texture,:warranty,:voltage,:requirements,:accessories,:temperature)

    if @hard_drive.update(hard_drive_params)
      redirect_to("/hard_drives/#{@hard_drive.id}")
    else
      render("edit")
    end
    end

    def destroy
    @hard_drive = HardDrive.find(params[:id])
    @hard_drive.destroy
    redirect_to hard_drives_path
    end

  


end