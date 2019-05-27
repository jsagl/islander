class ChangeLatitudeToBeFloatInIslands < ActiveRecord::Migration[5.2]
  def change
    change_column :islands, :latitude, :float
  end
end
