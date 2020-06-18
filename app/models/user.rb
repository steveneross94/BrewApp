class User < ApplicationRecord
    has_many :favorites
    has_many :beers, through: :favorites
    validates :username, uniqueness: {case_sensitive: true}
    
end