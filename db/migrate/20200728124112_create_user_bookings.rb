class CreateUserBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bookings do |t|
      t.integer :user_id
      t.integer :booking_id
      t.timestamps
    end
  end
end
