class RecipeFermentable < ApplicationRecord
    has_one :fermentable
    belongs_to :mash
    belongs_to :boil
    belongs_to :fermentation

    validates :name, length: {minimum: 1}, presence: true
    validates :color,   numericality: {greater_than_or_equal_to: 0, only_integer: true}, presence: true
    validates :extract, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100, only_integer: true}, presence: true
    
    validates :amount, numericality: {greater_than: 0}, presence: true
end
