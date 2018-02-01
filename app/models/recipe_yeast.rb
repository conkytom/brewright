class RecipeYeast < ApplicationRecord
    has_one :yeast
    belongs_to :fermentation

    validates :name, length: {minimum: 1}, presence: true
    validates :attenuation, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100, only_integer: true}, presence: true
end
