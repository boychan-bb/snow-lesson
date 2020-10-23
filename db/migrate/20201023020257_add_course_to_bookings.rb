class AddCourseToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :course, :string, after: :id, foreign_key: true #after: :idとすることでidの右隣にcourseカラムが追加される
  end
end
