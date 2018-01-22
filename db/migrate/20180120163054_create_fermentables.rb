class CreateFermentables < ActiveRecord::Migration[5.1]
  def change
    create_table :fermentables do |t|
      t.string :name
      t.text :comment
      t.decimal :amount
      t.string :location
      t.string :amount_unit
      t.integer :color
      t.string :color_unit
      t.integer :extract
      t.integer :usage_rate
      t.string :type
      t.decimal :percent_malt_bill
      t.string :maltster
      t.string :origin

      t.timestamps
    end
  end
end
