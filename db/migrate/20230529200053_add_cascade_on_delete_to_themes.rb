class AddCascadeOnDeleteToThemes < ActiveRecord::Migration[7.0]
  # def change
  # end
  def up
    remove_foreign_key :themes, :vehicles
    add_foreign_key :themes, :vehicles, on_delete: :cascade
  end

  def down
    remove_foreign_key :themes, :vehicles
    add_foreign_key :themes, :vehicles
  end
end
