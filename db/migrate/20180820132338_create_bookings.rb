class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_on
      t.date :end_on
      t.string :status
      t.references :user, foreign_key: true
      t.references :piece, foreign_key: true

      t.timestamps
    end
  end
end
