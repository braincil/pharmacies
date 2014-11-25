class PharmaciesController < ApplicationController

	

	def index
		if params[:city].blank?	
			@pharmacies = Pharmacy.all
		else
			@city_id = City.find_by(name: params[:city]).id
			@pharmacies = Pharmacy.where(city_id: @city_id)
		end
	end



	def import
		Pharmacy.import(params[:file])
		redirect_to root_url, notice: "Products imported"
	end

end
