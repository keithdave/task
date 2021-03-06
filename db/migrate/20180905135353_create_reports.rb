class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :body
      t.references :inventory, foreign_key: true

      t.timestamps
    end
  end
end
