require 'rest-client'
require 'json'

Brewery.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = "https://api.openbrewerydb.org/breweries?per_page=50"
resp = RestClient.get(url)

data = JSON.parse(resp)


data.each do |brewery|
    
       Brewery.create(name: brewery["name"], state: brewery["state"], brewery_type: brewery["brewery_type"], website_url: brewery["website_url"])
end
