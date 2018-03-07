class RecipeYeast < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?
    
    belongs_to :recipe, optional: true

    def set_defaults
        self.location ||= 'Primary'
    end
end
