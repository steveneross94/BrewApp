require 'rest-client'
require 'json'

Brewery.destroy_all
Beer.destroy_all
User.destroy_all
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


Beer.create(name: "Vanillaphant Porter", brewery_id: 1 )
Beer.create(name: "Battlefield IPA", brewery_id: 1 )
Beer.create(name: "Miss Fancy's Tripel", brewery_id: 1 )
Beer.create(name: "TrimTab IPA", brewery_id: 2 )
Beer.create(name: "Paradise Now (Raspberry Berliner Weisse)", brewery_id: 2 )
Beer.create(name: "Pillar To Post", brewery_id: 2 )
Beer.create(name: "Rebellion", brewery_id: 3 )
Beer.create(name: "Belgian White Ale", brewery_id: 3 )
Beer.create(name: "Midnight Special", brewery_id: 3 )
Beer.create(name: "Frontiersman IPA", brewery_id: 4 )
Beer.create(name: "Mat Maid", brewery_id: 4 )
Beer.create(name: "Hatcher Pass", brewery_id: 4 )
Beer.create(name: "Helles Golden Lager", brewery_id: 5 )
Beer.create(name: "Winter Warmer", brewery_id: 5 )
Beer.create(name: "Humpy's Saison", brewery_id: 5 )
Beer.create(name: "Naughty Naranja", brewery_id: 6 )
Beer.create(name: "Weapons Check", brewery_id: 6 )
Beer.create(name: "Baya Gose", brewery_id: 6 )
Beer.create(name: "Western Lager", brewery_id: 7 )
Beer.create(name: "Saison", brewery_id: 7 )
Beer.create(name: "HopStorm® IPA", brewery_id: 8 )
Beer.create(name: "Jeremiah Red", brewery_id: 8 )
Beer.create(name: "Piranha Pale Ale", brewery_id: 8 )
Beer.create(name: "Admiration IPA", brewery_id: 9 )
Beer.create(name: "Vanilla Infused Porter (VIP)", brewery_id: 9 )
Beer.create(name: "Baja Sol", brewery_id: 9 )
Beer.create(name: "Dragoon IPA", brewery_id: 10 )
Beer.create(name: "Stronghold Session", brewery_id: 10 )
Beer.create(name: "Santa Cruz'R", brewery_id: 10 )
Beer.create(name: "Sunset Amber Ale", brewery_id: 11 )
Beer.create(name: "Black Iron IPA", brewery_id: 11 )
Beer.create(name: "Grand Canyon Expedition Wheat", brewery_id: 11 )
Beer.create(name: "Desert Magic IPA", brewery_id: 12 )
Beer.create(name: "Full Moon", brewery_id: 12 )
Beer.create(name: "HavaBlue", brewery_id: 12 )
Beer.create(name: "McRichter Paleworks", brewery_id: 13 )
Beer.create(name: "Criminal Mischief", brewery_id: 13 )
Beer.create(name: "Hot Fuzz", brewery_id: 13 )
Beer.create(name: "JuicyJack", brewery_id: 14 )
Beer.create(name: "MoonJuice", brewery_id: 14 )
Beer.create(name: "HopShock", brewery_id: 14 )
Beer.create(name: "Sound of Freedom IPA", brewery_id: 15 )
Beer.create(name: "Northeast X Southwest", brewery_id: 15 )
Beer.create(name: "Suncast IPA", brewery_id: 15 )
Beer.create(name: "Spellbinder", brewery_id: 16 )
Beer.create(name: "Jomax", brewery_id: 16 )
Beer.create(name: "Wrenovation", brewery_id: 16 )
Beer.create(name: "Dirty Sally", brewery_id: 17 )
Beer.create(name: "Troubled Horse Porter", brewery_id: 17 )
Beer.create(name: "Claw Hammer", brewery_id: 17 )
Beer.create(name: "Pig Trail Porter", brewery_id: 18 )
Beer.create(name: "Two Term Double IPA", brewery_id: 18 )
Beer.create(name: "Dogtown Brown", brewery_id: 18 )
Beer.create(name: "Love Honey Bock", brewery_id: 19 )
Beer.create(name: "Crystal State Rockhound IPA", brewery_id: 19 )
Beer.create(name: "Day Drinker Belgian Blonde", brewery_id: 19 )
Beer.create(name: "1000K IPA", brewery_id: 20 )
Beer.create(name: "My Sweet Mtn. Home Stout", brewery_id: 20 )
Beer.create(name: "Buffalo Blonde Ale", brewery_id: 20 )
Beer.create(name: "Plundered Abby Tripel", brewery_id: 21 )
Beer.create(name: "Sliepnir's Kick Maple Porter", brewery_id: 21 )
Beer.create(name: "Ayla's Amber Ale", brewery_id: 21 )
Beer.create(name: "Islay Hill IPA", brewery_id: 22 )
Beer.create(name: "Cabrillo. Peak Amber", brewery_id: 22 )
Beer.create(name: "Cerro San Luis Imperial Stout", brewery_id: 22 )
Beer.create(name: "Boss Pour IPA", brewery_id: 23 )
Beer.create(name: "BA Brick in Yo Face", brewery_id: 23 )
Beer.create(name: "Candy Cane Ice Cream Cake", brewery_id: 23 )
Beer.create(name: "Maui Waui IPA", brewery_id: 24 )
Beer.create(name: "Hella Hoppy", brewery_id: 24 )
Beer.create(name: "Juice Above the Clouds", brewery_id: 24 )
Beer.create(name: "Gold Digger IPA", brewery_id: 25 )
Beer.create(name: "PU240 Imperial IPA", brewery_id: 25 )
Beer.create(name: "ZZ Hop Triple IPA", brewery_id: 25 )
Beer.create(name: "Tomahawk Double IPA", brewery_id: 26 )
Beer.create(name: "Rita Red", brewery_id: 26 )
Beer.create(name: "Set Sail IPA", brewery_id: 26 )
Beer.create(name: "Racer 5 IPA", brewery_id: 27 )
Beer.create(name: "Hop Rod Rye", brewery_id: 27 )
Beer.create(name: "Red Rocket Ale", brewery_id: 27 )
Beer.create(name: "Grizzly Paw", brewery_id: 28 )
Beer.create(name: "Three Hours From Nowhere", brewery_id: 28 )
Beer.create(name: "Evil Ben Black IPA", brewery_id: 28 )
Beer.create(name: "Sparkle Pony", brewery_id: 29 )
Beer.create(name: "Nectar of Life", brewery_id: 29 )
Beer.create(name: "Witless Zombie", brewery_id: 29 )
Beer.create(name: "Excavator Doppel Bock", brewery_id: 30 )
Beer.create(name: "E.P.A.", brewery_id: 30 )
Beer.create(name: "Sequoia Red", brewery_id: 30 )
Beer.create(name: "Many Moons", brewery_id: 33 )
Beer.create(name: "Coconut Moons", brewery_id: 33 )
Beer.create(name: "Oatie Oats India Pale Ale", brewery_id: 33 )
Beer.create(name: "Agua Fresca", brewery_id: 34 )
Beer.create(name: "Fruit Cup", brewery_id: 34 )
Beer.create(name: "Café con Leche", brewery_id: 34 )
Beer.create(name: "Beautiful View", brewery_id: 35 )
Beer.create(name: "Guerita", brewery_id: 35 )
Beer.create(name: "Aztec Princess", brewery_id: 35 )
Beer.create(name: "Table of Brotherhood", brewery_id: 36 )
Beer.create(name: "Goods From The Woods", brewery_id: 37 )
Beer.create(name: "Woke AF Hazy IPA", brewery_id: 37 )
Beer.create(name: "McSteamy", brewery_id: 37 )
Beer.create(name: "Floyd IPA", brewery_id: 38 )
Beer.create(name: "Cloverdale Ale", brewery_id: 38 )
Beer.create(name: "Oatmeal Raisin Cookie Stout", brewery_id: 38 )
Beer.create(name: "1903 Lager", brewery_id: 39 )
Beer.create(name: "Heavenly Hefe", brewery_id: 39 )
Beer.create(name: "El Prieto Sour Black Ale", brewery_id: 39 )
Beer.create(name: "Lady Roja", brewery_id: 41 )
Beer.create(name: "Bridges", brewery_id: 41 )
Beer.create(name: "Aurantia", brewery_id: 41 )
Beer.create(name: "Hoppy Salvation", brewery_id: 42 )
Beer.create(name: "O'Beardsley's Stout", brewery_id: 42 )
Beer.create(name: "Golden Nektar", brewery_id: 42 )
Beer.create(name: "10:45 To Denver", brewery_id: 43 )
Beer.create(name: "Glitz And Glam", brewery_id: 43 )
Beer.create(name: "Civility", brewery_id: 43 )
Beer.create(name: "Lazy Day IPA", brewery_id: 44 )
Beer.create(name: "Midnight Express", brewery_id: 44 )
Beer.create(name: "Redlands Nights", brewery_id: 44 )
Beer.create(name: "King Citra", brewery_id: 45 )
Beer.create(name: "Hazy Train", brewery_id: 45 )
Beer.create(name: "Galaxy Juice", brewery_id: 45 )
Beer.create(name: "Villager", brewery_id: 46 )
Beer.create(name: "KSA", brewery_id: 46 )
Beer.create(name: "Animal IPA", brewery_id: 46 )
Beer.create(name: "Dream Catcher", brewery_id: 47 )
Beer.create(name: "Citro Haze", brewery_id: 47 )
Beer.create(name: "Basic AF", brewery_id: 47 )
Beer.create(name: "Conveyor IPA", brewery_id: 48 )
Beer.create(name: "Cogzilla Double IPA", brewery_id: 48 )
Beer.create(name: "Burned And Blackened Smoked Porter", brewery_id: 48 )
Beer.create(name: "Heritage Honey Ale", brewery_id: 49 )
Beer.create(name: "Cold Brew Coffee Stout", brewery_id: 49 )
Beer.create(name: "Eureka! IPA", brewery_id: 49 )
Beer.create(name: "Wheel's Up", brewery_id: 50 )
Beer.create(name: "Betty IPA", brewery_id: 50 )
Beer.create(name: "Easy Glider", brewery_id: 50 )


User.create(username: 'George-W-Busch')
User.create(username: 'IPAGuy7')
User.create(username: 'GlutenFreeNot4Me')
User.create(username: 'David-Hopperfield')
User.create(username: 'Keg_Griffin')
User.create(username: 'YouDownWithIBV')
User.create(username: 'I-Drink-There-4-I-Am')
User.create(username: 'Beerion-Lannister')
User.create(username: 'Brew_Carey')
User.create(username: 'KeghanMarkle')




Favorite.create(beer: Beer.all.sample, user: User.third)
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.last)
Favorite.create(beer: Beer.all.sample, user: User.first)
Favorite.create(beer: Beer.all.sample, user: User.first)
Favorite.create(beer: Beer.all.sample, user: User.first)
Favorite.create(beer: Beer.all.sample, user: User.first)
Favorite.create(beer: Beer.all.sample, user: User.fifth)
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))
Favorite.create(beer: Beer.all.sample, user: User.find_by(username: 'Beerion-Lannister'))

avondale_brewing = Brewery.all[0]
avondale_brewing.update(img_url: "https://avondalebrewing.com/images/logo.svg")

trim_tab_brewing = Brewery.all[1]
trim_tab_brewing.update(img_url: "https://static.wixstatic.com/media/d4ad6a_2cbf1ca3a83a4a31a8b313f9eb4dd224~mv2.png/v1/fill/w_670,h_186,al_c,q_85,usm_0.66_1.00_0.01/TT_logo_inline_blue.webp")

yellowhammer_brewery = Brewery.all[2]
yellowhammer_brewery.update(img_url: "https://static.wixstatic.com/media/282b89_c4610016f639472fba918a4a45b42fe5~mv2_d_3080_1313_s_2.png/v1/fill/w_1164,h_494,al_c,q_90,usm_0.66_1.00_0.01/Yellowhammer-without-bird_drop%20shadow_pn.webp")

bearpaw_river = Brewery.all[3]
bearpaw_river.update(img_url: "http://www.bearpawriverbrewing.com.s3.amazonaws.com/assets/img/brbc_logo.png")

king_street = Brewery.all[4]
king_street.update(img_url: "http://www.kingstreetbrewing.com/images/logo-king-street-big.png")

nineteentwelve = Brewery.all[5]
nineteentwelve.update(img_url: "https://secureservercdn.net/166.62.115.254/18a.190.myftpupload.com/wp-content/uploads/2015/10/logo_tm.png")

bad_water = Brewery.all[6]
bad_water.update(img_url: "https://beerpulse.com/wp-content/uploads/2012/10/Bad-Water-Brewing-logo.png")

bjs_rest = Brewery.all[7]
bjs_rest.update(img_url: "https://dailyovation.com/wp-content/uploads/2018/04/BJ-Restaurant.jpeg")

blackrock = Brewery.all[8]
blackrock.update(img_url: "http://blackrockbrewers.com/blogs/wp-content/uploads/2019/07/BRB_REDO-v1.2_white.png")

dragoon = Brewery.all[9]
dragoon.update(img_url: "https://images.squarespace-cdn.com/content/53ed6608e4b042bb7cb43256/1449612975929-VRKAAPSR5OHG53SMIMFC/stacked_white.png?format=1500w&content-type=image%2Fpng")

grand_canyon = Brewery.all[10]
grand_canyon.update(img_url: "https://static.wixstatic.com/media/531093_1dc0cbdfbee44c5abe9082e4ff229c7b~mv2_d_1800_1200_s_2.png/v1/fill/w_650,h_430,al_c,q_85,usm_0.66_1.00_0.01/531093_1dc0cbdfbee44c5abe9082e4ff229c7b~mv2_d_1800_1200_s_2.webp")

mudshark = Brewery.all[11]
mudshark.update(img_url: "https://static.wixstatic.com/media/6881b3_427d54302c164e5ea195b776ab4131d8~mv2.png/v1/fill/w_678,h_322,al_c,q_85,usm_0.66_1.00_0.01/MSB%20Main%20logoF.webp")

richter_aleworks = Brewery.all[12]
richter_aleworks.update(img_url: "https://brewerydb-images.s3.amazonaws.com/brewery/3r0qlu/upload_FS1YWp-large.png")

santan = Brewery.all[13]
santan.update(img_url: "https://chooseazbrews.com/wp-content/uploads/2020/01/STB-Brewery-Distillery-Eatery-01.png")

state_fortyeight = Brewery.all[14]
state_fortyeight.update(img_url: "https://ewscripps.brightspotcdn.com/dims4/default/96a4394/2147483647/strip/true/crop/640x360+0+60/resize/1280x720!/quality/90/?url=https%3A%2F%2Fmediaassets.abc15.com%2Fphoto%2F2017%2F04%2F27%2FKNXV%20State%20Forty%20Eight_1493338935917_58940756_ver1.0_640_480.jpg")

wren_house = Brewery.all[15]
wren_house.update(img_url: "https://www.wrenhousebrewing.com/uploads/b/9995bc70-5417-11ea-8555-418ed22d8b78/25d31ced58f2210ca263c37b0ed5b2c8.png?width=1455")

brick_oven_pizza = Brewery.all[16]
brick_oven_pizza.update(img_url: "https://www.brickovenpizzacompany.com/Content/img/BrickForge-Logo.png")

diamond_bear = Brewery.all[17]
diamond_bear.update(img_url: "https://cdn.shopify.com/s/files/1/0904/6478/products/RESIZING_DiamondBear_grande.jpg?v=1535033987")

last_forty = Brewery.all[18]
last_forty.update(img_url: "https://scontent.fewr1-6.fna.fbcdn.net/v/t31.0-8/10582936_304704793048882_1708718117434779898_o.png?_nc_cat=101&_nc_sid=85a577&_nc_ohc=5tEx4wNow9sAX9Wa4_B&_nc_ht=scontent.fewr1-6.fna&oh=f4b7b6ad8e892be643f36477eca146d3&oe=5F0EA015")

rapps_barren = Brewery.all[19]
rapps_barren.update(img_url: "http://www.rappsbarrenbrewing.com/images/a/e/b/5/8/aeb5805d7f0c152ef33690f026e57f0554c49bd6-rapps-nobg1x.png")

whistleing_springs = Brewery.all[20]
whistleing_springs.update(img_url: "http://www.darkhillsbrew.com/images/weblogosm.gif")

seven_sisters = Brewery.all[21]
seven_sisters.update(img_url: "https://slochamber.org/wp-content/uploads/2018/12/7Sisters-Brewing-Company_1200.png")

abnormal_beer = Brewery.all[22]
abnormal_beer.update(img_url: "https://thefullpint.com/wp-content/uploads/2015/11/Abnormal-Beer-Co.jpg")

altamont = Brewery.all[23]
altamont.update(img_url: "https://www.altamontbeerworks.com/uploads/b/f9f7e4a0-7bea-11e9-bd75-8b0048015a37/Altamont-Beer-Works-logo-19-white-small_MTAwMD.png?width=400")

auburn_alehouse = Brewery.all[24]
auburn_alehouse.update(img_url: "https://auburnalehouse.com/portals/0/images/auburn-alehouse-round-logo.png")

back_street = Brewery.all[25]
back_street.update(img_url: "https://www.backstreetbrew.com/uploads/2/5/4/2/25423927/header_images/1387344417.png")

bear_republic = Brewery.all[26]
bear_republic.update(img_url: "https://bearrepublic.com/wp-content/themes/bearrepublic/images/logo.png")

bird_street = Brewery.all[27]
bird_street.update(img_url: "https://utfb-images.untappd.com/sRh19gyU6hLNcdHgJPPRZVVh?auto=compress")

black_hammer = Brewery.all[28]
black_hammer.update(img_url: "https://lh3.googleusercontent.com/NcDKi7PxxQ9oKbfNk1-1-MXLGvRBhv5D0LcNL04tJcSDHqbHEDHbJiQITA9dONc9k3OKoVKXtnY0gwZ9gr93-V7SESc39Q=s750")

brewbakers = Brewery.all[29]
brewbakers.update(img_url: "https://lh3.googleusercontent.com/proxy/XxdgR_voFFACC3eniNpwhXElVcu8wrvsA8_bQl2uNMw2iISzry9mDyOo5nffUUeW3n4entleuNQ3sEh8q9SCky0rVSALY3FEE3ADfPr7EysAAAurmAb3ehSl8RGmA2E")

planned_la = Brewery.all[30]
planned_la.update(img_url: "https://webassets.inman.com/wp-content/uploads/2019/10/Untitled-design-2019-10-29T153346.079-1400x621.jpg")

planned_sd = Brewery.all[31]
planned_sd.update(img_url: "https://webassets.inman.com/wp-content/uploads/2019/10/Untitled-design-2019-10-29T153346.079-1400x621.jpg")

twenty_five = Brewery.all[32]
twenty_five.update(img_url: "https://shop.brewerytwentyfive.com/uploads/b/e6859020-672c-11ea-b48b-e5d3108aa252/BreweryTwentyFive_Logo_Vertical_RGB_Red.png?width=216")

camino = Brewery.all[33]
camino.update(img_url: "https://caminobrewing.com/wp-content/uploads/2018/04/camino-fb-1-768x403.png")

chula_vista = Brewery.all[34]
chula_vista.update(img_url: "https://static.wixstatic.com/media/8d4c14_0d682e5feb6a4a05b36ac1c5170f74ce~mv2_d_3000_3000_s_4_2.png/v1/fill/w_698,h_698,al_c,q_90,usm_0.66_1.00_0.01/8d4c14_0d682e5feb6a4a05b36ac1c5170f74ce~mv2_d_3000_3000_s_4_2.webp")

band_of_brothers = Brewery.all[35]
band_of_brothers.update(img_url: "https://i.vimeocdn.com/portrait/9630095_300x300")

barnaby = Brewery.all[36]
barnaby.update(img_url: "https://cdn.justwineapp.com/assets/producer/logo-dark/barnaby-brewing-company.png")

ruth_mcgowans = Brewery.all[37]
ruth_mcgowans.update(img_url: "https://lh6.ggpht.com/bLzZSmOjoAxpNn33DPU9R6AV0_mrzXa9upql2OxCBUofsgeqtDYC2axsH6L7d3E6eta1mSyprMxKdF-nsCPu09rEoRHUIQ=s750")

craftsman = Brewery.all[38]
craftsman.update(img_url: "https://lh6.ggpht.com/ayhVu1hZmPzw2SLVlpLt-gFQ9yGVFm7b591yxheLjlaaOdWIHcpxEfU4FLDWpwLZ1r3UiX0Sth0iiomnSBS5uBVqasI-f-I=s750")

dry_river = Brewery.all[40]
dry_river.update(img_url: "https://images.squarespace-cdn.com/content/5d65f0b311f0070001868992/1568663942282-119CRSCK7OEC11M5M2B9/DryRiverBrewing-Logo-Horiz_150dpi.png?content-type=image%2Fpng")

eight_bridges = Brewery.all[41]
eight_bridges.update(img_url: "https://utfb-images.untappd.com/logos/3f663ad7a8f08964d92a2de8b45d80bf39cb17db.png?auto=compress")

eppig = Brewery.all[42]
eppig.update(img_url: "https://pbs.twimg.com/profile_images/743498737087971328/mADnVhXh.jpg")

escape = Brewery.all[43]
escape.update(img_url: "https://pbs.twimg.com/profile_images/3623887213/e60ff604ef611417bd44262add4a005e_400x400.jpeg")

fieldwork = Brewery.all[44]
fieldwork.update(img_url: "https://brewpublic.com/wp-content/uploads/2018/01/Fieldwork-Brewing-Co..png")

fort_point = Brewery.all[45]
fort_point.update(img_url: "https://www.nicepng.com/png/detail/341-3415376_dake-wilson-architecture-logo-fort-point-beer-logo.png")

fountainhead = Brewery.all[46]
fountainhead.update(img_url: "https://www.fountainheadbrewingco.com/s/img/emotionheader.jpg?1491281034.920px.477px")

geartooth = Brewery.all[47]
geartooth.update(img_url: "https://d2pxm94gkd1wuq.cloudfront.net/BreweryLogos/Standard/449380831.geartoothalewerks.jpg")

golden_state = Brewery.all[48]
golden_state.update(img_url: "https://images.squarespace-cdn.com/content/57ac0496b3db2b4ff1e0efbe/1470891476719-M7WKPOPYK8A3D8Y367B5/GSB-pint-glass.png?content-type=image%2Fpng")

hanger_twentyfour = Brewery.all[49]
hanger_twentyfour.update(img_url: "https://cdn.craftbeer.com/wp-content/uploads/2015/12/22215152/H24_full_logo_2013.jpg")