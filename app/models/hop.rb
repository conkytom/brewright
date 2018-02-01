class Hop < ApplicationRecord
    has_many :recipe_hop

    default_scope { order('name ASC') }

    validates :name, length: {minimum: 1}, presence: true
    validates :alpha_acid,   numericality: {greater_than: 0}, presence: true
end
