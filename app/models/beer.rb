class Beer < ApplicationRecord
    belongs_to :brewery
    has_many :favorites
    has_many :customers, through: :favorites
end