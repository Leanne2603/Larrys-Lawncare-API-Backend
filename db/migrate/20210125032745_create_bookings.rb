class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :email
      t.string :address
      t.date :booking_date
      t.text :notes
      t.references :suburb, null: false, foreign_key: true

      t.timestamps
    end
  end
end
