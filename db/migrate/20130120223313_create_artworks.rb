class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.boolean :available
      t.boolean :sold
      t.integer :width
      t.integer :height
      t.string :medium
      t.integer :year
      t.integer :art_group_id

      t.timestamps
    end
  end
end
