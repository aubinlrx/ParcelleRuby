class EquipmentTypesController < ApplicationController

	def index
		@equipmentTypes = EquipmentType.all
	end

	def show
		@equipmentType = EquipmentType.find(params[:id])
	end

	def new
		@equipmentType = EquipmentType.new

	end

	def edit
		@equipmentType = EquipmentType.find(params[:id])
	end

	def create
		@equipmentType = EquipmentType.new(params[:equipmentType])

		respond_to do |format|
			if @equipmentType.save	
				format.html { redirect_to @equipmentType }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@equipmentType = EquipmentType.find(params[:id])

		respond_to do |format|
			if @equipmentType.update_attributes(params[:equipmentType])
				format.html { redirect_to @equipmentType }
			else
				format.html { redirect_to equipmentTypes_path }
			end
		end
	end

	def destroy
		@equipmentType = EquipmentType.find(params[:id])

		respond_to do |format|
			if @equipmentType.destroy
				format.html { redirect_to equipmentTypes_url }
			else
				format.html { redirect_to equipmentTypes_url }
			end
		end
	end

end
