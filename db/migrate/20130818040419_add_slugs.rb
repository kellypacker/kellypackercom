class AddSlugs < ActiveRecord::Migration
  def up
    add_column :art_groups, :slug, :string
    add_column :artworks, :slug, :string
  end

  def down
    remove_column :art_groups, :slug
    remove_column :artworks, :slug
  end
end
