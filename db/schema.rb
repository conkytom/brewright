# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180220012528) do

  create_table "boils", force: :cascade do |t|
    t.integer "length"
    t.string "length_unit"
    t.decimal "pre_volume"
    t.decimal "post_volume"
    t.string "volume_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.decimal "kettle_volume"
    t.string "kettle_volume_unit"
    t.decimal "loss"
    t.string "loss_unit"
    t.decimal "evaporation_rate"
    t.string "eavopration_rate_unit"
    t.decimal "wort_shrinkage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fermentables", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.decimal "amount"
    t.string "location"
    t.string "amount_unit"
    t.integer "color"
    t.string "color_unit"
    t.integer "extract"
    t.integer "usage_rate"
    t.string "ferm_type"
    t.decimal "percent_malt_bill"
    t.string "maltster"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_fermentables_on_name", unique: true
  end

  create_table "fermentations", force: :cascade do |t|
    t.integer "primary_time"
    t.string "primary_time_unit"
    t.integer "primary_temp"
    t.boolean "secondary"
    t.integer "secondary_time"
    t.string "secondary_time_unit"
    t.integer "secondary_temp"
    t.decimal "volume"
    t.string "volume_unit"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hops", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.decimal "amount"
    t.integer "time"
    t.string "time_unit"
    t.string "location"
    t.string "amount_unit"
    t.decimal "alpha_acid"
    t.decimal "ibu"
    t.string "hop_type"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_hops_on_name", unique: true
  end

  create_table "mashes", force: :cascade do |t|
    t.decimal "grain_bill"
    t.integer "length"
    t.integer "target_temp"
    t.integer "strike_temp"
    t.decimal "strike_volume"
    t.decimal "sparge_volume"
    t.decimal "efficiency"
    t.decimal "thickness"
    t.decimal "grain_absorption"
    t.integer "grain_temp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "others", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.decimal "amount"
    t.integer "time"
    t.string "time_unit"
    t.string "location"
    t.string "amount_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_others_on_name", unique: true
  end

  create_table "recipe_fermentables", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.decimal "amount"
    t.string "location"
    t.string "amount_unit"
    t.integer "color"
    t.string "color_unit"
    t.integer "extract"
    t.integer "usage_rate"
    t.string "ferm_type"
    t.decimal "percent_malt_bill"
    t.string "maltster"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.index ["name"], name: "index_recipe_fermentables_on_name", unique: true
  end

  create_table "recipe_hops", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.decimal "amount"
    t.integer "time"
    t.string "time_unit"
    t.string "location"
    t.string "amount_unit"
    t.decimal "alpha_acid"
    t.decimal "ibu"
    t.string "hop_type"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.index ["name"], name: "index_recipe_hops_on_name", unique: true
  end

  create_table "recipe_others", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.decimal "amount"
    t.integer "time"
    t.string "time_unit"
    t.string "location"
    t.string "amount_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.index ["name"], name: "index_recipe_others_on_name", unique: true
  end

  create_table "recipe_yeasts", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.decimal "amount"
    t.string "amount_unit"
    t.string "location"
    t.string "yeast_type"
    t.string "lab"
    t.string "product_id"
    t.string "flocculation"
    t.integer "tolerance"
    t.string "temp_range"
    t.string "attenuation_range"
    t.integer "attenuation"
    t.string "form"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.index ["name"], name: "index_recipe_yeasts_on_name", unique: true
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.decimal "size"
    t.string "size_unit"
    t.string "recipe_type"
    t.decimal "trub_loss"
    t.string "trub_loss_unit"
    t.decimal "original_gravity"
    t.decimal "final_gravity"
    t.string "gravity_unit"
    t.decimal "abv"
    t.decimal "abw"
    t.integer "ibu"
    t.integer "color"
    t.string "color_unit"
    t.decimal "bu_gu_ratio"
    t.string "bu_gu_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "grain_bill"
    t.integer "mash_length"
    t.integer "mash_target_temp"
    t.integer "mash_strike_temp"
    t.decimal "mash_strike_volume"
    t.decimal "mash_sparge_volume"
    t.decimal "mash_efficiency"
    t.decimal "mash_thickness"
    t.decimal "mash_grain_absorption"
    t.integer "grain_temp"
    t.integer "fermentation_primary_time"
    t.string "fermentation_primary_time_unit"
    t.integer "fermentation_primary_temp"
    t.boolean "fermentation_secondary"
    t.integer "fermentation_secondary_time"
    t.string "fermentation_secondary_time_unit"
    t.integer "fermentation_secondary_temp"
    t.decimal "fermentation_volume"
    t.string "fermentation_volume_unit"
    t.string "fermentation_location"
    t.integer "boil_length"
    t.string "boil_length_unit"
    t.decimal "boil_pre_volume"
    t.decimal "boil_post_volume"
    t.string "boil_volume_unit"
    t.decimal "equipment_kettle_volume"
    t.string "equipment_kettle_volume_unit"
    t.decimal "equipment_loss"
    t.string "equipment_loss_unit"
    t.decimal "equipment_evaporation_rate"
    t.string "equipment_evaporation_rate_unit"
    t.decimal "equipment_wort_shrinkage"
    t.text "comment"
  end

  create_table "yeasts", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.decimal "amount"
    t.string "amount_unit"
    t.string "location"
    t.string "yeast_type"
    t.string "lab"
    t.string "product_id"
    t.string "flocculation"
    t.integer "tolerance"
    t.string "temp_range"
    t.string "attenuation_range"
    t.integer "attenuation"
    t.string "form"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_yeasts_on_name", unique: true
  end

end
