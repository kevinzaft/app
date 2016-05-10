class ComputerCasesController < ApplicationController

    def index

        @computer_cases = ComputerCase.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the computer_case and pits it in an array
        render("index")
    end

    def show
    @computer_case = ComputerCase.find(params[:id])
    render("show")
    end

    def new
    @computer_case = ComputerCase.new
    render("new")
    end

    def create
    computer_case_params = params.require(:computer_case).permit(:name, :code,:price, :casetype, :brand, :casemodel, :motherboard, :material, :drivebay,:weight,:expansion,:dimensions,:thickness,:iopanel,:cooling,:power,:cpucompatibility, :vgacompatibility,:other)
    @computer_case = ComputerCase.new(computer_case_params)
    if @computer_case.save
      redirect_to("/computer_cases/#{@computer_case.id}")
    else
      render("new")
    end
    end

    def edit
        @computer_case = ComputerCase.find(params[:id])
        render ("edit")
    end

    def update
    @computer_case = ComputerCase.find(params[:id])

    computer_case_params = params.require(:computer_case).permit(:name, :code,:price, :casetype, :brand, :casemodel, :motherboard, :material, :drivebay,:weight,:expansion,:dimensions,:thickness,:iopanel,:cooling,:power,:cpucompatibility, :vgacompatibility,:other)

    if @computer_case.update(computer_case_params)
      redirect_to("/computer_cases/#{@computer_case.id}")
    else
      render("edit")
    end
    end

    def destroy
    @computer_case = ComputerCase.find(params[:id])
    @computer_case.destroy
    redirect_to computer_cases_path
    end

  


end