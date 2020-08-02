class AddNameToInstructors < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :name, :string
  end
end
