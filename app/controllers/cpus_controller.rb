class CpusController < ApplicationController

	def index

		@cpus = Cpu.all #the @ makes it an instance varipu. Makes it accesspu in the model and thus html
									#The .all gets all of the cpu and pits it in an array
		render("index")
	end

	def show
    @cpu = Cpu.find(params[:id])
    render("show")
    end

    def new
    @cpu = Cpu.new
    render("new")
    end

    def create
    cpu_params = params.require(:cpu).permit(:name, :code,:price, :cputype, :sockettype, :brand,:mpn,:cpumodel,:series,:cores,:threads,:clock,:cache,:power,:manufacturing,:memorytypes,:memorychannels,:graphics, :other)
    @cpu = Cpu.new(cpu_params)
    if @cpu.save
      redirect_to("/cpus/#{@cpu.id}")
    else
      render("new")
    end
    end

    def edit
        @cpu = Cpu.find(params[:id])
        render ("edit")
    end

    def update
    @cpu = Cpu.find(params[:id])

    cpu_params = params.require(:cpu).permit(:name, :code,:price, :cputype, :sockettype, :brand,:mpn,:cpumodel,:series,:cores,:threads,:clock,:cache,:power,:manufacturing,:memorytypes,:memorychannels,:graphics, :other)

    if @cpu.update(cpu_params)
      redirect_to("/cpus/#{@cpu.id}")
    else
      render("edit")
    end
    end

    def destroy
    @cpu = Cpu.find(params[:id])
    @cpu.destroy
    redirect_to cpus_path
    end

  


end