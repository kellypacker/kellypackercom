ActiveAdmin.register ArtGroup do

  index do
    column :title, :sortable => :title do |art_group|
      link_to art_group.title, edit_admin_art_group_path(art_group)
    end
    default_actions
  end

 form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :title
    f.input :slug
    f.input :description
    f.input :image, :as => :file #, :hint => f.template.image_tag(f.object.image.url(:medium))
  end
  f.buttons
 end
end
