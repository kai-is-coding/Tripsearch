class AddGeocodingFieldsToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :latitude, :float
    add_column :attractions, :logitude, :float
  end
end
