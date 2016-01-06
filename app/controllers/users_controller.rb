class UsersController < ApplicationController
	before_action :user_admin?, only: [:index]
	def index
		@users = User.all
	end

	def show
		@user = User.find params[:id]
	end

	private

	def user_admin?
		redirect_to :root if !current_user.admin
	end
end
