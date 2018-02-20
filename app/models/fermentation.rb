class Fermentation < ApplicationRecord
    has_many :recipe_fermentable
    has_many :recipe_other
    has_many :recipe_hop
    has_many :recipe_yeast
    belongs_to :recipe
end
