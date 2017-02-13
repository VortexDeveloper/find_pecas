class AddDurationToPackage < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :duration, :integer
  end
end
