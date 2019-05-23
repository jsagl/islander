class CreateIslands < ActiveRecord::Migration[5.2]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :country
      t.decimal :lat
      t.decimal :lng
      t.string :title
      t.text :description
      t.float :rating
      t.integer :number_of_guests
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
