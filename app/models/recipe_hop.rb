class RecipeHop < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?

    belongs_to :recipe, optional: true

    validates :name, length: {minimum: 1}, presence: true
    validates :alpha_acid,   numericality: {greater_than: 0}, presence: true

    def set_defaults
        self.amount ||= 0
        self.location ||= 'Boil'
        self.amount_unit ||= 'g'
        self.time ||= 0
        self.time_unit ||= 'Mins'
    end
end
