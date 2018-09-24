class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :name
      t.text :describtion
	  t.references :department, foreign_key: true
	  t.references :feature, foreign_key: true
	  t.references :demand, foreign_key: true
	  t.references :report, foreign_key: true

      t.timestamps
    end
  end
end
