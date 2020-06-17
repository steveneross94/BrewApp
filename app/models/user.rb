class User < ApplicationRecord
    has_many :favorites
    has_many :beers, through: :favorites
end