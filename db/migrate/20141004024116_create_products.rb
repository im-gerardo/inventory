class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.float :cost
      t.float :price
      t.integer :category_id
      t.integer :minimum

      t.timestamps
    end
  end
end
