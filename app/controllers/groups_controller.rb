class GroupsController < ApplicationController

	def index
		@groups = Group.all
	end

	def show
		@group = Group.find(params[:id])
	end

	def new
		@group = Group.new

	end

	def edit
		@group = Group.find(params[:id])
	end

	def create
		@group = Group.new(params[:group])

		respond_to do |format|
			if @group.save	
				format.html { redirect_to @group }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@group = Group.find(params[:id])

		respond_to do |format|
			if @group.update_attributes(params[:group])
				format.html { redirect_to @group }
			else
				format.html { redirect_to groups_path }
			end
		end
	end

	def destroy
		@group = Group.find(params[:id])

		respond_to do |format|
			if @group.destroy
				format.html { redirect_to groups_url }
			else
				format.html { redirect_to groups_url }
			end
		end
	end

end
