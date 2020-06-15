class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :beer_id
      t.integer :customer_id
    end
  end
end
