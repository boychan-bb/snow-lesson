class RemoveInstructorIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :instructor_id, :integer
  end
end
