class PlotsController < ApplicationController

	def index
		@plots = Plot.all
	end

	def show
		@plot = Plot.find(params[:id])
	end

	def new
		@plot = Plot.new
    plot_information = @plot.build_plot_information
	end

	def edit
		@plot = Plot.find(params[:id])
	end

	def create
		@plot = Plot.new(params[:plot])

		respond_to do |format|
			if @plot.save	
				format.html { redirect_to @plot }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@plot = Plot.find(params[:id])

		respond_to do |format|
			if @plot.update_attributes(params[:plot])
				format.html { redirect_to @plot }
			else
				format.html { redirect_to plots_path }
			end
		end
	end

	def destroy
		@plot = Plot.find(params[:id])

		respond_to do |format|
			if @plot.destroy
				format.html { redirect_to plots_url }
			else
				format.html { redirect_to plots_url }
			end
		end
	end
	
end
