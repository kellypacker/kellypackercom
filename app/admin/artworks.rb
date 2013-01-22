ActiveAdmin.register Artwork do
  index do
    column :title, :sortable => :title do |artwork|
      link_to artwork.title, edit_admin_artwork_path(artwork)
    end
    column "Year", :sortable => :year do |artwork|
      "#{artwork.year}"
    end
    column :art_group, :sortable => :art_group
    column :sold
    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :title
    f.input :available
    f.input :sold
    f.input :price
    # f.input :map, :as => :file
    f.input :image, :as => :file #, :hint => f.template.image_tag(f.object.image.url(:medium))
    f.input :width
    f.input :height
    f.input :medium, :as => :select, :collection => Artwork::MEDIUMS
    f.input :year, :as => :select, :collection => Artwork::YEARS
    f.input :art_group_id, :as => :select, :collection => ArtGroup.all

  end
  f.buttons
 end
end