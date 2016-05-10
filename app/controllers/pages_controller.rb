class PagesController < ApplicationController    
	def home
		render("home")#sending a response using render and looks for a home file in pages (bc pages_controller)
	end

	def about
		render("about")
	end

	def contact
		render("contact")
	end
end