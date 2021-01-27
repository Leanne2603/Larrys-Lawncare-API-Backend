class ChangeDataTypeForPhonenumber < ActiveRecord::Migration[6.0]
  def change
    def self.up
      change_table :bookings do |t|
        t.change :phonenumber, :string
      end
    end
    def self.down
      change_table :bookings do |t|
        t.change :phonenumber, :integer
      end
    end
  end
end
