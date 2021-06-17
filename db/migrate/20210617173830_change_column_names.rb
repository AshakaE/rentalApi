class ChangeColumnNames < ActiveRecord::Migration[6.1]
  def change
    change_table :bookings do |t|
      t.rename :car_name, :carName
      t.rename :car_model, :carModel
      t.rename :car_id, :carId
      t.rename :user_id, :userId
      t.rename :user_name, :userName
      t.rename :created_by, :createdBy
      t.rename :image_url, :imageUrl
    end
    rename_column :cars, :image_url, :imageUrl
    add_column :bookings, :year, :integer
  end
end
