class PlotInformationsController < ApplicationController
		def index
		@plot_informations = PlotInformation.all
	end

	def show
		@plot_information = PlotInformation.find(params[:id])
	end

	def new
		@plot_information = PlotInformation.new

	end

	def edit
		@plot_information = PlotInformation.find(params[:id])
	end

	def create
		@plot_information = PlotInformation.new(params[:plot_information])

		respond_to do |format|
			if @plot_information.save	
				format.html { redirect_to @plot_information }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@plot_information = PlotInformation.find(params[:id])

		respond_to do |format|
			if @plot_information.update_attributes(params[:plot_information])
				format.html { redirect_to @plot_information }
			else
				format.html { redirect_to plot_informations_path }
			end
		end
	end

	def destroy
		@plot_information = PlotInformation.find(params[:id])

		respond_to do |format|
			if @plot_information.destroy
				format.html { redirect_to plot_informations_url }
			else
				format.html { redirect_to plot_informations_url }
			end
		end
	end
end
