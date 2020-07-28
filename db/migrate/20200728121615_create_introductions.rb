class CreateIntroductions < ActiveRecord::Migration[5.2]
  def change
    create_table :introductions do |t|

      t.timestamps
    end
  end
end
