class RemoveNameFromIntroductions < ActiveRecord::Migration[5.2]
  def change
    remove_column :introductions, :name, :string
  end
end
