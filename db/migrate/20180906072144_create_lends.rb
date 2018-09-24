class CreateLends < ActiveRecord::Migration[5.2]
  def change
    create_table :lends do |t|
      t.string :asset_name
      t.string :cost

      t.timestamps
    end
  end
end
