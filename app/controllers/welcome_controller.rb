class WelcomeController < ApplicationController
	respond_to :html, :json

	def index
		@categories = Category.all
	end
end
