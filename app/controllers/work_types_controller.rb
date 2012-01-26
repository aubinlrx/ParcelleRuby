class WorkTypesController < ApplicationController

	def index
		@work_types = WorkType.all
	end

	def show
		@work_type = WorkType.find(params[:id])
	end

	def new
		@work_type = WorkType.new

	end

	def edit
		@work_type = WorkType.find(params[:id])
	end

	def create
		@work_type = WorkType.new(params[:work_type])

		respond_to do |format|
			if @work_type.save	
				format.html { redirect_to @work_type }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@work_type = WorkType.find(params[:id])

		respond_to do |format|
			if @work_type.update_attributes(params[:work_type])
				format.html { redirect_to @work_type }
			else
				format.html { redirect_to work_types_path }
			end
		end
	end

	def destroy
		@work_type = WorkType.find(params[:id])

		respond_to do |format|
			if @work_type.destroy
				format.html { redirect_to work_types_url }
			else
				format.html { redirect_to work_types_url }
			end
		end
	end
	
end
