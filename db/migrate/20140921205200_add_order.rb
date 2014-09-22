class AddOrder < ActiveRecord::Migration
  def change
    add_column :artworks, :row_order, :integer, :null => false, :default => 0
    add_column :art_groups, :row_order, :integer, :null => false, :default => 0
  end
end
