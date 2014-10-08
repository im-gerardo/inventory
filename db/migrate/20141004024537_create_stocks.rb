class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :product_id
      t.integer :quantity
      t.integer :reason_id

      t.timestamps
    end
  end
end
