class RemoveInstructorIdFromGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :instructor_id, :integer
  end
end
