class Recipe < ApplicationRecord
    has_one :mash
    has_one :boil
    has_one :fermentation
    has_one :equipment
    has_many :recipe_fermentables, dependent: :destroy
    has_many :recipe_others, dependent: :destroy
    has_many :recipe_hops, dependent: :destroy
    has_many :recipe_yeasts, dependent: :destroy

    default_scope { order('name ASC') }

    
end
