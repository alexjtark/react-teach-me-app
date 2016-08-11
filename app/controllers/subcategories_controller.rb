class SubcategoriesController < ApplicationController

	before_action :set_resource, only: [:show, :edit, :update, :destroy]

	def index
		@subcategories = Subcategory.all
		render json: @subcategories
	end

	def show
		@posts = @subcategory.posts
	end

	def search
	  @posts = Subcategory.posts.search(params[:query])
	  if request.xhr?
	    render :json => @posts.to_json
	  else
	    render :show
	  end
	end

	private

	def set_resource
		@subcategory = Subcategory.find(params[:id])
	end

end