class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.string :payment_status
      t.integer :total_price
      t.time :hour

      t.timestamps
    end
  end
end
