class ChangeMediumToMediumId < ActiveRecord::Migration
  def change
    remove_column :artworks, :medium
    add_column :artworks, :medium_id, :integer
  end
end
