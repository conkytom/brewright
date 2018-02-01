class RecipeHop < ApplicationRecord
    has_one :hop
    belongs_to :mash
    belongs_to :boil
    belongs_to :fermentation

    validates :name, length: {minimum: 1}, presence: true
    validates :alpha_acid,   numericality: {greater_than: 0}, presence: true
    
    validates :amount, numericality: {greater_than: 0}, presence: true
    validates :time, numericality: {greater_than_or_equal_to: 0}, presence: true
end
