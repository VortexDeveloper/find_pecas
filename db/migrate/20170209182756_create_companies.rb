class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :trade
      t.string :cnpj
      t.string :phone
      t.string :cellphone
      t.string :address
      t.string :operating_hours

      t.timestamps
    end
  end
end
