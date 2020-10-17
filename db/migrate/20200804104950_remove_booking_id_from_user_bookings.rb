class RemoveBookingIdFromUserBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_bookings, :booking_id, :integer
  end
end
