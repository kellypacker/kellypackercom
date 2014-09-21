class AddArtworkDescStoreLink < ActiveRecord::Migration
  def change
    add_column :artworks, :description, :text
    add_column :artworks, :store_link, :string
  end
end
