ActiveAdmin.register Artwork do
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
  end
  f.buttons
 end
end