class AddCoordinatesToTerraces < ActiveRecord::Migration[5.2]
  def change
    add_column :terraces, :latitude, :float
    add_column :terraces, :longitude, :float
  end
end
