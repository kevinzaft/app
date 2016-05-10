class ComputerMonitorsController < ApplicationController

    def index

        @computer_monitors = ComputerMonitor.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the computer_monitor and pits it in an array
        render("index")
    end

    def show
    @computer_monitor = ComputerMonitor.find(params[:id])
    render("show")
    end

    def new
    @computer_monitor = ComputerMonitor.new
    render("new")
    end

    def create
    computer_monitor_params = params.require(:computer_monitor).permit(:name, :code,:price, :brand, :monitormodel,:monitortype,:paneltype,:display,:resolution,:ratio,:response,:contrast,:brightness,:displaycolors,:inputconnector,:touchscreen,:threed,:builtinspeaker,:usb,:tvtuner,:power,:heightadjustable,:tilt,:dimensions,:weight,:warranty,:other)
    @computer_monitor = ComputerMonitor.new(computer_monitor_params)
    if @computer_monitor.save
      redirect_to("/computer_monitors/#{@computer_monitor.id}")
    else
      render("new")
    end
    end

    def edit
        @computer_monitor = ComputerMonitor.find(params[:id])
        render ("edit")
    end

    def update
    @computer_monitor = ComputerMonitor.find(params[:id])

    computer_monitor_params = params.require(:computer_monitor).permit(:name, :code,:price, :brand, :monitormodel,:monitortype,:paneltype,:display,:resolution,:ratio,:response,:contrast,:brightness,:displaycolors,:inputconnector,:touchscreen,:threed,:builtinspeaker,:usb,:tvtuner,:power,:heightadjustable,:tilt,:dimensions,:weight,:warranty,:other)

    if @computer_monitor.update(computer_monitor_params)
      redirect_to("/computer_monitors/#{@computer_monitor.id}")
    else
      render("edit")
    end
    end

    def destroy
    @computer_monitor = ComputerMonitor.find(params[:id])
    @computer_monitor.destroy
    redirect_to computer_monitors_path
    end

  


end