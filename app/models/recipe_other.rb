class RecipeOther < ApplicationRecord
    has_one :other
    belongs_to :mash
    belongs_to :boil
    belongs_to :fermentation

    validates :name, length: {minimum: 1}, presence: true

    validates :amount, numericality: {greater_than: 0}, presence: true
end
