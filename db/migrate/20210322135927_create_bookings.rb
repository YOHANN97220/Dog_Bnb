class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :total_price
      t.date :start_at
      t.date :end_at
      t.references :user, null: false, foreign_key: true
      t.references :box, null: false, foreign_key: true

      t.timestamps
    end
  end
end
