class Recipe < ApplicationRecord
    has_one :mash
    has_one :boil
    has_one :fermentation
    has_one :equipment

    validates :name, length: {minimum: 1}, presence: true
end
