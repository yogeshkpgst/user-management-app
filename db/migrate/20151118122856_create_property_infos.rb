class CreatePropertyInfos < ActiveRecord::Migration
  def change
    create_table :property_infos do |t|
      t.integer :zip_id
      t.string :home_type
      t.integer :bed_rooms
      t.integer :bath_rooms
      t.float :finished_square_footage
      t.float :lot_size_square_footage
      t.date :year_build
      t.date :year_updated
      t.integer :number_of_floors
      t.string :basement
      t.string :roof_type
      t.string :view
      t.string :parking_type
      t.string :heating_sources
      t.string :heating_system
      t.string :appliances
      t.string :floor_covering
      t.string :rooms
      t.string :images
      t.string :street_address
      t.integer :zipcode
      t.string :city
      t.string :state
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
