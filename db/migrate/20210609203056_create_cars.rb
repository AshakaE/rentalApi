class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.integer :year
      t.string :image_url

      t.timestamps
    end
  end
end
