class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :start_on
      t.date :end_on
      t.references :user, foreign_key: true
      t.references :piece, foreign_key: true

      t.timestamps
    end
  end
end
