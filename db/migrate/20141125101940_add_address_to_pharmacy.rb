class AddAddressToPharmacy < ActiveRecord::Migration
  def change
    add_column :pharmacies, :address, :string
  end
end
