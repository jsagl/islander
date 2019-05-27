class ChangeLongitudeToBeFloatInIslands < ActiveRecord::Migration[5.2]
  def change
    change_column :islands, :longitude, :float
  end
end
