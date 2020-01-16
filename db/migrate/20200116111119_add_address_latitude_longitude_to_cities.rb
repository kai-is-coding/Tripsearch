class AddAddressLatitudeLongitudeToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :address, :text
    add_column :cities, :latitude, :float
    add_column :cities, :longitude, :float
  end
end
