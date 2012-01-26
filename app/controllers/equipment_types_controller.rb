 class EquipmentTypesController < ApplicationController

	def index
		@equipment_types = EquipmentType.all
	end

	def show
		@equipment_type = EquipmentType.find(params[:id])
	end

	def new
		@equipment_type = EquipmentType.new

	end

	def edit
		@equipment_type = EquipmentType.find(params[:id])
	end

	def create
		@equipment_type = EquipmentType.new(params[:equipment_type])

		respond_to do |format|
			if @equipment_type.save	
				format.html { redirect_to @equipment_type }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@equipment_type = EquipmentType.find(params[:id])

		respond_to do |format|
			if @equipment_type.update_attributes(params[:equipment_type])
				format.html { redirect_to @equipment_type }
			else
				format.html { redirect_to equipment_types_path }
			end
		end
	end

	def destroy
		@equipment_type = EquipmentType.find(params[:id])

		respond_to do |format|
			if @equipment_type.destroy
				format.html { redirect_to equipment_types_url }
			else
				format.html { redirect_to equipment_types_url }
			end
		end
	end

end
