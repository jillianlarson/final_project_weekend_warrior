class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :image_url

      t.timestamps

    end
  end
end
