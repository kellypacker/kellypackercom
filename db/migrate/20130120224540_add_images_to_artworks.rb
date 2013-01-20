class AddImagesToArtworks < ActiveRecord::Migration
  def self.up
    add_attachment :artworks, :image
  end

  def self.down
    remove_attachment :artworks, :image
  end
end
