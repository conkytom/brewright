class CreateHops < ActiveRecord::Migration[5.1]
  def change
    create_table :hops do |t|
      t.string :name
      t.text :comment
      t.decimal :amount
      t.integer :time
      t.string :time_unit
      t.string :location
      t.string :amount_unit
      t.decimal :alpha_acid
      t.decimal :ibu
      t.string :type
      t.string :origin

      t.timestamps
    end
  end
end
