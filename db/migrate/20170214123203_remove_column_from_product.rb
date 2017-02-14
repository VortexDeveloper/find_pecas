class RemoveColumnFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :part, :references
  end
end
