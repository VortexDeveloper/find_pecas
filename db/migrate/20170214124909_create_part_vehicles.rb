class CreatePartVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :part_vehicles do |t|
      t.references :vehicle, foreign_key: true
      t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
