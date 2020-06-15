class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :type
      t.string :state
      t.string :website_url
      t.string :img_url, default: nil
      
    end
  end
end


