class AddAmToPharmacy < ActiveRecord::Migration
  def change
    add_column :pharmacies, :am, :integer
    add_column :pharmacies, :surname, :string
  end
end
