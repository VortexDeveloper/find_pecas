class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cpf, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :admin, :integer, limit: 1, default: 0
    add_reference :users, :company, foreign_key: true
  end
end
