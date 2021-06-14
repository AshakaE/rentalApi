class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.datetime :date
      t.string :created_by
      t.integer :price, null: false
      t.integer :duration
      t.references :car, null: false, foreign_key: true
      t.string :car_name
      t.string :car_model
      t.references :user, null: false, foreign_key: true
      t.string :user_name

      t.timestamps
    end
  end
end
