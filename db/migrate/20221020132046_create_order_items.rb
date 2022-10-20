class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.integer :table_number
      t.integer :price
      t.integer :number_customer

      t.timestamps
    end
  end
end
