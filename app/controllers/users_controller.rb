class UsersController < ApplicationController
	before_action :user_admin?, only: [:index]
	def index

	end


	private

	def user_admin?
		redirect_to 'root' if !current_user.user_admin
	end
end
