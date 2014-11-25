class CreatePharmacies < ActiveRecord::Migration
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
