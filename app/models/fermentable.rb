class Fermentable < ApplicationRecord
    has_many :recipe_fermentable

    default_scope { order('name ASC') }

    validates :name, length: {minimum: 1}, presence: true
    validates :color,   numericality: {greater_than_or_equal_to: 0, only_integer: true}, presence: true
    validates :extract, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100, only_integer: true}, presence: true
end
