class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :artist
      t.string :album
      t.integer :year
      t.string :current_price
      t.string :image

      t.timestamps
    end
  end
end
