class Boil < ApplicationRecord
    has_many :hop
    has_many :other
    belongs_to :recipe
end
