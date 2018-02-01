class Other < ApplicationRecord
    has_many :recipe_other

    validates :name, length: {minimum: 1}, presence: true
end
