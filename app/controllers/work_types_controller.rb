class WorkTypesController < ApplicationController

	def index
		@workTypes = WorkType.all
	end

	def show
		@workType = WorkType.find(params[:id])
	end

	def new
		@workType = WorkType.new

	end

	def edit
		@workType = WorkType.find(params[:id])
	end

	def create
		@workType = WorkType.new(params[:workType])

		respond_to do |format|
			if @workType.save	
				format.html { redirect_to @workType }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@workType = WorkType.find(params[:id])

		respond_to do |format|
			if @workType.update_attributes(params[:workType])
				format.html { redirect_to @workType }
			else
				format.html { redirect_to workTypes_path }
			end
		end
	end

	def destroy
		@workType = WorkType.find(params[:id])

		respond_to do |format|
			if @workType.destroy
				format.html { redirect_to workTypes_url }
			else
				format.html { redirect_to workTypes_url }
			end
		end
	end
	
end
