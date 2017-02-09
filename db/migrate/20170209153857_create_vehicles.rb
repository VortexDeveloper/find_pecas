class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.integer :vehicle_type
      t.string :vehicle_model
      t.string :year

      t.timestamps
    end
  end
end
