class AddArtistStatement < ActiveRecord::Migration
  def change
    add_column :art_groups, :artist_statement, :text
  end
end
