class Pharmacy < ActiveRecord::Base
	belongs_to :city

	def self.import(file)
		CSV.foreach(file.path , encoding: "iso-8859-1:UTF-8", headers: true) do |row|
			Pharmacy.create! row.to_hash
		end
	end
end		

