class PostsController < ApplicationController
	before_action :set_post, only: [:show]
	impressionist actions: [:show], unique: [:session_hash]

	def show
		impressionist(@post)
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