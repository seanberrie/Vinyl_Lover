class AddOwnToRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :own, :boolean
  end
end
