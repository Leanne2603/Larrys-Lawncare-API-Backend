class CreateSuburbs < ActiveRecord::Migration[6.0]
  def change
    create_table :suburbs do |t|
      t.string :suburb
      t.references :postcode, null: false, foreign_key: true

      t.timestamps
    end
  end
end
