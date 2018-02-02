class Other < ApplicationRecord
    has_many :recipe_other

    default_scope { order('name ASC') }

    validates :name, length: {minimum: 1}, presence: true
end
