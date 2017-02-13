class AddPackageToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :package, foreign_key: true
  end
end
