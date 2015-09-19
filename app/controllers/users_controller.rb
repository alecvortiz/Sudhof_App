class UsersController < ApplicationController
	def index
		# redirect_to root_path, notice: "You need to be an admin to view that page." unless current_user && current_user.admin?
		if params[:q]
			@users = User.where("LOWER(email) LIKE ? or LOWER(name) LIKE ?", "%#{params[:q].downcase}%", "%#{params[:q].downcase}%")
		else
		    @users = User.all
		end
	end

	def show
		# redirect_to root_path, notice: "You need to be an admin to view that page." unless current_user && current_user.admin?
        @user = User.find(params[:id])
	end

	def edit
		redirect_to root_path, notice: "You need to be an admin to view that page." unless current_user && current_user.admin?
        @user = User.find(params[:id])
	end

	def update
		redirect_to root_path, notice: "You need to be an admin to view that page." unless current_user && current_user.admin?
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to user_path(@user)
		else
			render :edit
		end
	end

	def destroy
		redirect_to root_path, notice: "You need to be an admin to view that page." unless current_user && current_user.admin?
		@user = User.find(params[:id])
		@user.destroy

		redirect_to users_path
	end

	private
		def user_params
			params.require(:user).permit(:email, :password, :name, :role)
		end
end
