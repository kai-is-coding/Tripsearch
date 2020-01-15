class RemoveLogitudeFromAttractions < ActiveRecord::Migration[5.2]
  def change
    remove_column :attractions, :logitude, :float
  end
end
