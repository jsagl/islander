class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :islands, :lat, :latitude
    rename_column :islands, :lng, :longitude
  end
end
