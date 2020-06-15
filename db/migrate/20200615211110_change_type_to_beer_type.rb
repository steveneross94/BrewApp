class ChangeTypeToBeerType < ActiveRecord::Migration[6.0]
  def change
    remove_column :breweries, :type
    add_column :breweries, :brewery_type, :string
  end
end
