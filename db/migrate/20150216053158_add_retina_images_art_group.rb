class AddRetinaImagesArtGroup < ActiveRecord::Migration
  def change
    add_column :art_groups, :retina_dimensions, :text
  end
end
