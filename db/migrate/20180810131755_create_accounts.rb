class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.text :role
      t.references :department, foreign_key: true 
	  
      t.timestamps
    end
  end
end
