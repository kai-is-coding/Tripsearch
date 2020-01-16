class CreateCitiesWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :cities_wishlists do |t|
      t.integer :city_id
      t.integer :wishlist_id
    end
  end
end
