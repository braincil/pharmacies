class AddCityIdToPharmacy < ActiveRecord::Migration
  def change
    add_column :pharmacies, :city_id, :integer
  end
end
