class Mash < ApplicationRecord
    has_many :malt
    has_many :other
    has_many :hop
    belongs_to :recipe
    #has_one :equipment, :through => :recipe
end
