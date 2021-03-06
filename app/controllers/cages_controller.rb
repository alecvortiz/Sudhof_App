class CagesController < ApplicationController

	def index		
		if params[:q]
			@cages = current_user.cages.where("LOWER(line) LIKE ? or LOWER(cage_type) LIKE ?", "%#{params[:q].downcase}%", "%#{params[:q].downcase}%")
		else
		   @cages = current_user.cages
		end
		respond_to do |format|
    		format.html
    		format.csv { send_data @cages.to_csv }
    		format.xls 
  		end
	 end

	 def show
	 	@cage = Cage.find params[:id]
	 end

	 def new 
	 	@cage = Cage.new
	 end

	 def create
	 	@cage = current_user.cages.create(cages_params)
	 	if @cage.save
	 		redirect_to cages_path
	 	else
	 		render 'new'
	 	end
	 	
	 end

	 def edit 
	 	@cage = current_user.cages.find params[:id]
	 end

	 def update
 	    @cage = current_user.cages.find(params[:id])
  		if @cage.update(cages_params)
   	    	redirect_to cages_path
   	    else 
   			render 'edit'
   		end
	 end

	 def personal
	 	# redirect_to root_path, notice: "You need to be an admin to view that page." unless current_user && current_user.admin?
	 	@user = User.find params[:id]
	 	if params[:q]
			@cages = @user.cages.where("LOWER(line) LIKE ? or LOWER(cage_type) LIKE ?", "%#{params[:q].downcase}%", "%#{params[:q].downcase}%")
		else
		   @cages = @user.cages
		end
		respond_to do |format|
    		format.html
    		format.csv { send_data @cages.to_csv }
    		format.xls 
  		end
	 end

	 def stats
	 	user = User.find params[:id]
	 	@cages = user.cages 
	 end

	 def destroy
	 	cage = current_user.cages.find params[:id]
	 	cage.destroy
	 	redirect_to cages_path
	 end

	 private 
	 	def cages_params
			params.require(:cage).permit(:num_mice, :line, :pups, :cage_type, :num_litters)
	 	end
end
