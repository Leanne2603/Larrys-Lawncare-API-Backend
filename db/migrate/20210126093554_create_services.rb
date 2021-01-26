class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :service_name
      t.string :service_price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
