class AddReservedCountToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :reserved_count, :integer, foreign_key: true
  end
end
