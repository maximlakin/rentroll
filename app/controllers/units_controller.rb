class UnitsController < ApplicationController
	def create
		property = Property.find(params[:property_id])
		unit = property.units.new(params[:unit])
		unit.save
		redirect_to property_url(property)
	end

	def destroy
		property = Property.find(params[:property_id])
		unit = property.units.new(params[:unit])
		unit.destroy
		redirect_to root_url
	end
end
