class UsersController < ApplicationController
	before_action :set_user, only: [:show, :profile, :edit, :update]

	def show
	end

	def profile
		respond_to do |format|
			format.js
			format.html
		end
	end

	def edit
		respond_to do |format|
			format.js
		end
	end

	def update
		if @user.update(user_params)
			render :profile
		end
	end

private

	def set_user
		@user = User.find(session[:user_id])
	end

	def user_params
		params.require(:user).permit(:locale)
	end
end