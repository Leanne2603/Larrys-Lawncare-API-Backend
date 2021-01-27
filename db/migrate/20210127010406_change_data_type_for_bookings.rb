class ChangeDataTypeForBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :phonenumber, :string
  end
end
