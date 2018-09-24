class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :asset_name
      t.text :amount

      t.timestamps
    end
  end
end
