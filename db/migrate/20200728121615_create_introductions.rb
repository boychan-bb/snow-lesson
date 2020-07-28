class CreateIntroductions < ActiveRecord::Migration[5.2]
  def change
    create_table :introductions do |t|
      t.string :name
      t.text :introduction
      t.text :image
      t.timestamps
    end
  end
end
