class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :name
      t.integer :vehicle_amount
      t.integer :part_amount
      t.integer :visibility
      t.string :price
      t.date :ad_expiration

      t.timestamps
    end
  end
end
