class AddArtGroupToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :art_group_id, :integer
  end
end
