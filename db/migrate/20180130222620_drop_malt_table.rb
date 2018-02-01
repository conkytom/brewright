class DropMaltTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :malts
  end
end
