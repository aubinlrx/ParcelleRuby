class EquipmentsController < ApplicationController

	def index
		@equipments = Equipment.all
	end

	def show
		@equipment = Equipment.find(params[:id])
	end

	def new
		@equipment = Equipment.new

	end

	def edit
		@equipment = Equipment.find(params[:id])
	end

	def create
		@equipment = Equipment.new(params[:equipment])

		respond_to do |format|
			if @equipment.save	
				format.html { redirect_to @equipment }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@equipment = Equipment.find(params[:id])

		respond_to do |format|
			if @equipment.update_attributes(params[:equipment])
				format.html { redirect_to @equipment }
			else
				format.html { redirect_to equipments_path }
			end
		end
	end

	def destroy
		@equipment = Equipment.find(params[:id])

		respond_to do |format|
			if @equipment.destroy
				format.html { redirect_to equipments_url }
			else
				format.html { redirect_to equipments_url }
			end
		end
	end

end
