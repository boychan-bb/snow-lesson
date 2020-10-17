class AddBookingRefToUserBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_bookings, :booking, foreign_key: true
  end
end
