class CreateThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.references :users, null: false, foreign_key: true
      t.references :vehicles, null: false, foreign_key: true
      t.date :book_date
      t.string :vehicle_name

      t.timestamps
    end
  end
end
