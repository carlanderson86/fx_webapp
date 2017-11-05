# This migration comes from fx (originally 20171029211753)
class CreateFxConversions < ActiveRecord::Migration[5.1]
  def change
    create_table :fx_conversions do |t|
      t.integer :base_currency_id
      t.integer :target_currency_id
      t.decimal :rate, :precision => 12, :scale => 6
      t.timestamp :timestamp
      t.timestamps
    end
  end
end
