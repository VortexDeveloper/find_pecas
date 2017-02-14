class AddFieldToProduct < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :part, foreign_key: true
  end
end
