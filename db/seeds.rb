require 'rest-client'
require 'json'

Brewery.destroy_all
Beer.destroy_all
Customer.destroy_all
Favorite.destroy_all

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

##should name be username if we do beer-a-dex? can we create a leaderboard?
Customer.create(name: "Steven Ross")
Customer.create(name: "Andrew de la Vega")
Customer.create(name: "Craig")
Customer.create(name: "Sean")
Customer.create(name: "Yoan Elon Space BBQ Musk Ante")

Beer.create(name: "Test Beer", brewery: Brewery.first)

Favorite.create(beer: Beer.first, customer: Customer.first)
Favorite.create(beer: Beer.first, customer: Customer.third)

