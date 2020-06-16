class ChangeBreweryIdToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :beers, :brewery_id, :integer
  end
end
