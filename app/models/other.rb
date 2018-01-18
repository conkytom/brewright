class Other < ApplicationRecord
    has_and_belongs_to_many :mash
    has_and_belongs_to_many :boil
    has_and_belongs_to_many :fermentation
end
