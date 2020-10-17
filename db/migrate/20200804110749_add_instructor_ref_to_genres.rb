class AddInstructorRefToGenres < ActiveRecord::Migration[5.2]
  def change
    add_reference :genres, :instructor, foreign_key: true
  end
end
