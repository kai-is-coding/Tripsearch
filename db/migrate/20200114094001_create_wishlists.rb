class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.text :place1
      t.text :place2
      t.text :place3
      t.text :place4
      t.text :place5
      t.text :place6
      t.text :place7

      t.timestamps
    end
  end
end
