class RenameHowlongColumnToBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :howlong, :how_long
  end
end
