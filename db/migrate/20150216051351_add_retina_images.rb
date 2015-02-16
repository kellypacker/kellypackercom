class AddRetinaImages < ActiveRecord::Migration
  def change
    add_column :art_groups, :retina_dimensions, :text
  end
  def change
    add_column :artworks, :retina_dimensions, :text
  end
end
