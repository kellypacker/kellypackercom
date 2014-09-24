class AddGiclee < ActiveRecord::Migration
  def change
    add_column :artworks, :prints_available, :boolean
    add_column :artworks, :framed, :boolean
  end
end
