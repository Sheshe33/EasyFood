class AddNameToMenu < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :name, :string
    add_column :menus, :description, :string
  end
end
