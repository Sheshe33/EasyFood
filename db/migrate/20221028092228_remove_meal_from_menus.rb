class RemoveMealFromMenus < ActiveRecord::Migration[7.0]
  def change
    remove_reference :menus, :meal, null: false, foreign_key: true
  end
end
