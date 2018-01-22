class Boil < ApplicationRecord
    has_many :recipe_hop
    has_many :recipe_other
    has_many :recipe_fermentable
    belongs_to :recipe

    validates :length, numericality: {greater_than: 0, only_integer: true}, presence: true
end
