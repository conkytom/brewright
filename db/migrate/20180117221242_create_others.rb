class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
      t.string :name
      t.text :comment
      t.decimal :amount
      t.integer :time
      t.string :time_unit
      t.string :location
      t.string :amount_unit

      t.timestamps
    end
  end
end
