class RemoveUserIdFromUserBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_bookings, :user_id, :integer
  end
end
