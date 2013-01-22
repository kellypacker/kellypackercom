class CreateArtGroups < ActiveRecord::Migration
  def change
    create_table :art_groups do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
