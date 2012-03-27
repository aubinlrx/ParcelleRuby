class UsersController < ApplicationController

	def index
		@users = User.all			
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
		@group = Group.all
	end

	def edit
    	@user = User.find(params[:id])
    	@group = Group.all
    end

	def create
    	@user = User.new(params[:user])
    	@group = Group.all

    	respond_to do |format|
	    	if @user.save
	     	 	format.html {redirect_to root_url, :notice => 'Signed up!'}
	    	else
	      	format.html {render "new"}
	    	end
	    end
    end

 	def update
  		@user = User.find(params[:id])
  		@group = Group.all
 
	  	respond_to do |format|
	    	if @user.update_attributes(params[:user])
	      		format.html  { redirect_to(@user,
	                    :notice => 'Post was successfully updated.') }
	      		format.json  { head :no_content }
	    	else
	      		format.html  { render :action => "edit" }
	      		format.json  { render :json => @post.errors,
	                    :status => :unprocessable_entity }
	    	end
	  	end
	end

	def destroy
		@user = User.find(params[:id])
		
		respond_to do |format|
			if @user.destroy
				format.html {redirect_to users_url}
			else
				format.html {redirect_to users_url, :notice => "Erreur lors de la suppression"}
			end
		end		
	end

end
