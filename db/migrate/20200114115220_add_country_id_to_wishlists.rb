class AddCountryIdToWishlists < ActiveRecord::Migration[5.2]
  def change
    add_column :wishlists, :country_id, :integer
  end
end
