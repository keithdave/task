class CreateDemands < ActiveRecord::Migration[5.2]
  def change
    create_table :demands do |t|
      t.string :name
      t.string :quantity
      t.references :inventory, foreign_key: true

      t.timestamps
    end
  end
end
