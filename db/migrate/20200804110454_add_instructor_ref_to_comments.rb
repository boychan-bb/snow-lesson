class AddInstructorRefToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :instructor, foreign_key: true
  end
end
