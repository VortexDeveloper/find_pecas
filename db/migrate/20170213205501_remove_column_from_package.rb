class RemoveColumnFromPackage < ActiveRecord::Migration[5.0]
  def change
    remove_column :packages, :ad_expiration, :date
  end
end
