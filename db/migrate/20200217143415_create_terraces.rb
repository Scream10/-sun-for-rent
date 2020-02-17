class CreateTerraces < ActiveRecord::Migration[5.2]
  def change
    create_table :terraces do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :longitude
      t.integer :lattitude
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
