class RemoveUserFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :user
  end
end
