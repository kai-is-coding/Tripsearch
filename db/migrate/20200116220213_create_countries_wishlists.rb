class CreateCountriesWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :countries_wishlists do |t|
      t.integer :country_id
      t.integer :wishlist_id
    end
  end
end
