class RecipeYeast < ApplicationRecord
    
    belongs_to :fermentation
    belongs_to :recipe

    validates :name, length: {minimum: 1}, presence: true
    validates :attenuation, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100, only_integer: true}, presence: true
end
