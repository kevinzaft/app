class KeyboardMousesController < ApplicationController

    def index

        @keyboard_mouses = KeyboardMouse.all #the @ makes it an instance variable. Makes it accessable in the model and thus html
                                    #The .all gets all of the keyboard_mouse and pits it in an array
        render("index")
    end

    def show
    @keyboard_mouse = KeyboardMouse.find(params[:id])
    render("show")
    end

    def new
    @keyboard_mouse = KeyboardMouse.new
    render("new")
    end

    def create
    keyboard_mouse_params = params.require(:keyboard_mouse).permit(:name, :code,:price, :brand, :productmodel, :producttype,:connection,:warranty,:other)
    @keyboard_mouse = KeyboardMouse.new(keyboard_mouse_params)
    if @keyboard_mouse.save
      redirect_to("/keyboard_mouses/#{@keyboard_mouse.id}")
    else
      render("new")
    end
    end

    def edit
        @keyboard_mouse = KeyboardMouse.find(params[:id])
        render ("edit")
    end

    def update
    @keyboard_mouse = KeyboardMouse.find(params[:id])

    keyboard_mouse_params = params.require(:keyboard_mouse).permit(:name, :code,:price, :brand, :productmodel, :producttype,:connection,:warranty,:other)

    if @keyboard_mouse.update(keyboard_mouse_params)
      redirect_to("/keyboard_mouses/#{@keyboard_mouse.id}")
    else
      render("edit")
    end
    end

    def destroy
    @keyboard_mouse = KeyboardMouse.find(params[:id])
    @keyboard_mouse.destroy
    redirect_to keyboard_mouses_path
    end

  


end