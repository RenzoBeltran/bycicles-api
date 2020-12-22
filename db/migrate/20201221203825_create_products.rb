class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_code
      t.string :name
      t.string :brand
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
