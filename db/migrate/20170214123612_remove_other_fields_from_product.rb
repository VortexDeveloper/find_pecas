class RemoveOtherFieldsFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_reference :products, :vehicle, foreign_key: true
    remove_reference :products, :part, foreign_key: true
  end
end
