# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_17_010622) do

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.integer "brewery_id"
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.string "website_url"
    t.string "img_url"
    t.string "brewery_type"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "beer_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
  end

end
