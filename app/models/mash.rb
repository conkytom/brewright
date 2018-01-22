class Mash < ApplicationRecord
    has_many :recipe_fermentable
    has_many :recipe_other
    has_many :recipe_hop
    belongs_to :recipe
    #has_one :equipment, :through => :recipe

    validates :target_temp, numericality: {greater_than: 0, only_integer: true}, presence: true
    validates :efficiency, numericality: {greater_than: 0, less_than_or_equal_to: 100}, presence: true
    validates :thickness, numericality: {greater_than: 0}, presence: true
end
