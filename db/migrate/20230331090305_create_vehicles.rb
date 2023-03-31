class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :image
      t.decimal :drive_fee
      t.decimal :purchase_fee

      t.timestamps
    end
  end
end
