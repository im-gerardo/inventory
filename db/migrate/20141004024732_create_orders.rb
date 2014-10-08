class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :priority_id
      t.boolean :confirm

      t.timestamps
    end
  end
end
