class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :board
      t.string :renavam
      t.string :model
      t.string :year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
