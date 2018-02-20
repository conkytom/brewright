class RecipeOther < ApplicationRecord
    
    belongs_to :mash
    belongs_to :boil
    belongs_to :fermentation
    belongs_to :recipe

    validates :name, length: {minimum: 1}, presence: true

    validates :amount, numericality: {greater_than: 0}, presence: true
end
