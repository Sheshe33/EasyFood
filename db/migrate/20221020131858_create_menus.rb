class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.integer :price
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
