class AddColumnToVehicle < ActiveRecord::Migration[5.0]
  def change
    add_reference :vehicles, :product, foreign_key: true
  end
end
