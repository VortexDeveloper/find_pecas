class RemoveOtherColumnFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_reference :products, :package, foreign_key: true
  end
end
