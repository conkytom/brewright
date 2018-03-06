class RecipeFermentable < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?
    
    belongs_to :recipe, optional: true

    validates :name, length: {minimum: 1}, presence: true
    validates :color,   numericality: {greater_than_or_equal_to: 0, only_integer: true}, presence: true
    validates :extract, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100, only_integer: true}, presence: true
    
    
    def set_defaults
        self.amount ||= 0
        self.location ||= 'Mash'
        self.amount_unit ||= 'Lbs'
    end
    
end
