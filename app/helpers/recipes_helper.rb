module RecipesHelper
    def recipe_types
        [['All Grain', 'All Grain'], ['Extract', 'Extract'], ['Partial', 'Partial']]
    end

    def grain_locations
        [['Mash', 'Mash']]
    end

    def sugar_locations
        [['Mash', 'Mash'], ['Boil', 'Boil'], ['Whirlpool', 'Whirlpool'], ['Knockout', 'Konckout'], ['Primary', 'Primary'], ['Secondary', 'Secondary']]
    end

    def hop_locations
        [['Boil', 'Boil'], ['Whirlpool', 'Whirlpool'], ['Knockout', 'Konckout'], ['Primary', 'Primary'], ['Secondary', 'Secondary'], ['Mash', 'Mash']]
    end

    def other_locations
        [['Boil', 'Boil'], ['Whirlpool', 'Whirlpool'], ['Knockout', 'Konckout'], ['Mash', 'Mash'], ['Primary', 'Primary'], ['Secondary', 'Secondary'], ['In Keg', 'In Keg']]
    end
end
