class RecipeHop < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?

    belongs_to :recipe

    validates :name, length: {minimum: 1}, presence: true
    validates :alpha_acid,   numericality: {greater_than: 0}, presence: true
    
    validates :amount, numericality: {greater_than: 0}, presence: true
    validates :time, numericality: {greater_than_or_equal_to: 0}, presence: true

    def set_defaults
        self.amount ||= 0
        self.location ||= 'Boil'
        self.amount_unit ||= 'g'
        self.time ||= 0
        self.time_unit ||= 'Mins'
    end
end
