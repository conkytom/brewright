class ChangeHopTypeToHopType < ActiveRecord::Migration[5.1]
  def change
    rename_column :hops, :type, :hop_type
  end
end
