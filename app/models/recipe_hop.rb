class RecipeHop < ApplicationRecord

    belongs_to :recipe

    validates :name, length: {minimum: 1}, presence: true
    validates :alpha_acid,   numericality: {greater_than: 0}, presence: true
    
    validates :amount, numericality: {greater_than: 0}, presence: true
    validates :time, numericality: {greater_than_or_equal_to: 0}, presence: true
end
