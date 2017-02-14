class RemoveFieldsFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_reference :products, :vehicle_id, foreign_key: true
    remove_reference :products, :part_id, foreign_key: true
  end
end
