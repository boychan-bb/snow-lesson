class RemoveLessonDateFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :lesson_date, :date
  end
end
