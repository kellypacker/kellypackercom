class AddArtGroupToArtworks < ActiveRecord::Migration
  def change
    remove_column :artworks, :art_group_id
    add_column :artworks, :art_group_id, :integer
  end
end
