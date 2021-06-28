class AddImageUrlToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :image_url, :string
  end
end
