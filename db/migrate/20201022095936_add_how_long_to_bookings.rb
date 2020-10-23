class AddHowLongToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :howlong, :integer, foreign_key: true
  end
end
