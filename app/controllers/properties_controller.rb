class PropertiesController < ApplicationController
	def create
		property = Property.new(params[:property])
		property.save
		session[:errors]=property.errors
		redirect_to root_url
	end

	def show
		@property = Property.find(params[:id])
		@units = @property.units.all
		@unit = @property.units.new
		@ttl = @property.units.sum(:current_rent)
		@total = 0
		if @units.size!=0
			@units.each do |u|
				@total+=u.current_rent
			end
		end
	end

	def destroy
		@property = Property.find(params[:id])
		@property.destroy
		redirect_to root_url
	end
end
