class AddDescToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :desc, :string
  end
end
