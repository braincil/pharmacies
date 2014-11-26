class Pharmacy < ActiveRecord::Base
	belongs_to :city
	geocoded_by :my_address
	after_validation :geocode #do the geocoding after validation


	#geocode with address and location
	def my_address
		"#{address}, #{location}"
	end


	def self.import(file)
		CSV.foreach(file.path , encoding: "iso-8859-7:UTF-8", headers: true) do |row| #iso-8859-7 is for the greek lanugage encoding	
			Pharmacy.create! row.to_hash #write the records in database
		end
	end
end		

