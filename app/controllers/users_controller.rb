class UsersController < ApplicationController
	def index
		if params[:q]
			@users = User.where("LOWER(email) LIKE ?", "%#{params[:q].downcase}%")
		else
		    @users = User.all
		end
	end

	def edit
	end

	def update
	end
end
