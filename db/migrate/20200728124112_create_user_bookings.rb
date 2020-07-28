class CreateUserBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bookings do |t|

      t.timestamps
    end
  end
end
