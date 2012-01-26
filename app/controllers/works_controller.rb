class WorksController < ApplicationController

	def index
		@works = Work.all
	end

	def show
		@work = Work.find(params[:id])
		@work_type = WorkType.find(@work.work_type_id)
	end

	def new
		@work = Work.new
    @work_type = WorkType.all
	end

	def edit
		@work = Work.find(params[:id])
		@work_type = WorkType.all
	end

	def create
		@work = Work.new(params[:work])
    @work_type = Work.all
		respond_to do |format|
			if @work.save	
				format.html { redirect_to @work }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@work = Work.find(params[:id])
    @work_type = Work.all
		respond_to do |format|
			if @work.update_attributes(params[:work])
				format.html { redirect_to @work }
			else
				format.html { redirect_to works_path }
			end
		end
	end

	def destroy
		@work = Work.find(params[:id])
    @work_type = Work.all
		respond_to do |format|
			if @work.destroy
				format.html { redirect_to works_url }
			else
				format.html { redirect_to works_url }
			end
		end
	end
	
end
