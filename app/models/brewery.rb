class Brewery < ApplicationRecord
    has_many :beers
    has_many :favorites, through: :beers
end