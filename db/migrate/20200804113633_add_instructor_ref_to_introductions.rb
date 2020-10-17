class AddInstructorRefToIntroductions < ActiveRecord::Migration[5.2]
  def change
    add_reference :introductions, :instructor, foreign_key: true
  end
end
