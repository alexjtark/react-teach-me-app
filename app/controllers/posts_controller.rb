class PostsController < ApplicationController
	before_action :set_post, only: [:show]

	def show
	end

	def index
		@posts = Post.all
		render json: @posts
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end
end