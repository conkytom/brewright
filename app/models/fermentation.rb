class Fermentation < ApplicationRecord
    has_many :malt
    has_many :other
    belongs_to :recipe
end
