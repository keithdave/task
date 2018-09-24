class AddDetailsToInventory < ActiveRecord::Migration[5.2]
  def change
    add_column :inventories, :quantity, :string
    add_column :inventories, :arrival_date, :date
    add_column :inventories, :nature, :string
    add_column :inventories, :unit_cost, :decimal
  end
end
