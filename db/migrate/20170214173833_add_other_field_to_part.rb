class AddOtherFieldToPart < ActiveRecord::Migration[5.0]
  def change
    add_reference :parts, :vehicle, foreign_key: true
  end
end
