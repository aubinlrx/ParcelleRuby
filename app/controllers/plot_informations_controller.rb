class PlotInformationsController < ApplicationController
		def index
		@plotInformations = PlotInformation.all
	end

	def show
		@plotInformation = PlotInformation.find(params[:id])
	end

	def new
		@plotInformation = PlotInformation.new

	end

	def edit
		@plotInformation = PlotInformation.find(params[:id])
	end

	def create
		@plotInformation = PlotInformation.new(params[:plotInformation])

		respond_to do |format|
			if @plotInformation.save	
				format.html { redirect_to @plotInformation }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@plotInformation = PlotInformation.find(params[:id])

		respond_to do |format|
			if @plotInformation.update_attributes(params[:plotInformation])
				format.html { redirect_to @plotInformation }
			else
				format.html { redirect_to plotInformations_path }
			end
		end
	end

	def destroy
		@plotInformation = PlotInformation.find(params[:id])

		respond_to do |format|
			if @plotInformation.destroy
				format.html { redirect_to plotInformations_url }
			else
				format.html { redirect_to plotInformations_url }
			end
		end
	end
end
