class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.references :seller
      t.references :buyer
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
