class AddVehicleToProduct < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :vehicle, foreign_key: true
  end
end
