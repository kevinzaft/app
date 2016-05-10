class BurnerReadersController < ApplicationController

	def index

		@burner_readers = BurnerReader.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
									#The .all gets all of the burner_reader and pits it in an array
		render("index")
	end

	def show
    @burner_reader = BurnerReader.find(params[:id])
    render("show")
    end

    def new
    @burner_reader = BurnerReader.new
    render("new")
    end

    def create
    burner_reader_params = params.require(:burner_reader).permit(:name, :code,:price, :brand, :productmodel, :cdrom, :dvdrom, :drivetype, :dvdr,:dvdrdl,:dvdmr,:dvdmrdl,:dvdrw,:dvdmrw,:dvdmram,:cdmr,:cdmrw,:dvdzr,:dvdzrdl,:dvdzrw,:os,:buffer,:disc,:cdda,:mmcd,:other)
    @burner_reader = BurnerReader.new(burner_reader_params)
    if @burner_reader.save
      redirect_to("/burner_readers/#{@burner_reader.id}")
    else
      render("new")
    end
    end

    def edit
        @burner_reader = BurnerReader.find(params[:id])
        render ("edit")
    end

    def update
    @burner_reader = BurnerReader.find(params[:id])

    burner_reader_params = params.require(:burner_reader).permit(:name, :code,:price, :brand, :productmodel, :cdrom, :dvdrom, :drivetype, :dvdr,:dvdrdl,:dvdmr,:dvdmrdl,:dvdrw,:dvdmrw,:dvdmram,:cdmr,:cdmrw,:dvdzr,:dvdzrdl,:dvdzrw,:os,:buffer,:disc,:cdda,:mmcd,:other)

    if @burner_reader.update(burner_reader_params)
      redirect_to("/burner_readers/#{@burner_reader.id}")
    else
      render("edit")
    end
    end

    def destroy
    @burner_reader = BurnerReader.find(params[:id])
    @burner_reader.destroy
    redirect_to burner_readers_path
    end

  


end