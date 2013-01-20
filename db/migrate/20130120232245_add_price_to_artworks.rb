class AddPriceToArtworks < ActiveRecord::Migration
  def self.up
    add_column :artworks, :price, :integer
  end

  def self.down
    remove_column :artworks, :price, :integer
  end
end
