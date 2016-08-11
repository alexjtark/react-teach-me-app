class CategoriesController < ApplicationController
	respond_to :html, :json
	def index
		@categories = Category.all
		render json: @categories
	end

	def show
		@category = Category.find(params[:id]) 
		@subcategories = @category.subcategories
	end
end