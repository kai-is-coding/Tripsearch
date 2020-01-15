class AddAttractionIdCountryIdCityIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :attraction_id, :integer
    add_column :images, :country_id, :integer
    add_column :images, :city_id, :integer
  end
end
