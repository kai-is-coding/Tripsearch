class CreateAttractionsWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions_wishlists do |t|
      t.integer :attraction_id
      t.integer :wishlist_id
    end
  end
end
