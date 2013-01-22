class AddImageToArtGroup < ActiveRecord::Migration
  def self.up
    add_attachment :art_groups, :image
  end

  def self.down
    remove_attachment :art_groups, :image
  end
end
