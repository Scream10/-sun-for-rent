class AddColumnToPricePerNightToTerrace < ActiveRecord::Migration[5.2]
  def change
    add_column :terraces, :price_per_night, :integer
  end
end
