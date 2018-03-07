class Recipe < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?

    has_one :mash
    has_one :boil
    has_one :fermentation
    has_one :equipment
    has_many :recipe_fermentables, dependent: :destroy
    has_many :recipe_others, dependent: :destroy
    has_many :recipe_hops, dependent: :destroy
    has_many :recipe_yeasts, dependent: :destroy

    accepts_nested_attributes_for   :recipe_fermentables, 
                                    :recipe_hops, 
                                    :recipe_yeasts,
                                    :recipe_others,
                                    allow_destroy: true,
                                    :reject_if => :all_blank


    default_scope { order('name ASC') }

    def set_defaults
        self.size ||= 5
        self.size_unit ||= 'Gal'
        self.recipe_type ||= 'All Grain'
        self.trub_loss ||= 0.5
        self.trub_loss_unit ||= 'Gal'
        self.mash_length ||= 60
        self.mash_target_temp ||= 154
        self.mash_efficiency ||= 75
        self.mash_thickness ||= 1.33
        self.mash_grain_absorption ||= 0.13
        self.grain_temp ||= 70
        self.boil_length ||= 60
        self.boil_length_unit ||= 'Min'
        self.equipment_kettle_volume ||= 6
        self.equipment_kettle_volume_unit ||= 'Gal'
        self.equipment_loss ||= 0.5
        self.equipment_loss_unit ||= 'Gal'
        self.equipment_evaporation_rate ||= 15
        self.equipment_evaporation_rate_unit ||= '%'
        self.equipment_wort_shrinkage ||= 4
    
    end
    
end
