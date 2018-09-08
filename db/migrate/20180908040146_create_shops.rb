class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :shopname
      t.string :tel
      t.string :location
      t.string :opening_hours
      t.string :logo
      t.string :image
      t.text :intro

      t.timestamps
    end
  end
end
