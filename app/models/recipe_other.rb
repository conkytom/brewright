class RecipeOther < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?

    belongs_to :recipe, optional: true

    def set_defaults
        self.amount ||= 0
        self.amount_unit ||= 'g'
        self.time ||= 0
        self.time_unit ||= 'Mins'
    end
end
