class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :amount
      t.string :price
      t.text :tips
      t.integer :user_id
      t.string :serial_id
      t.string :stock
      t.string :shipping
      t.boolean :active

      t.timestamps
    end
  end
end
