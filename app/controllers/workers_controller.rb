class WorkersController < ApplicationController

	def index
		@workers = Worker.all
	end

	def show
		@worker = Worker.find(params[:id])
	end

	def new
		@worker = Worker.new

	end

	def edit
		@worker = Worker.find(params[:id])
	end

	def create
		@worker = Worker.new(params[:worker])

		respond_to do |format|
			if @worker.save	
				format.html { redirect_to @worker }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@worker = Worker.find(params[:id])

		respond_to do |format|
			if @worker.update_attributes(params[:worker])
				format.html { redirect_to @worker }
			else
				format.html { redirect_to workers_path }
			end
		end
	end

	def destroy
		@worker = Worker.find(params[:id])

		respond_to do |format|
			if @worker.destroy
				format.html { redirect_to workers_url }
			else
				format.html { redirect_to workers_url }
			end
		end
	end
	
end
