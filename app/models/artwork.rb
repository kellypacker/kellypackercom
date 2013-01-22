class Artwork < ActiveRecord::Base
  attr_accessible :available, :height, :medium, :sold, :title, :width, :year, :image, :price, :art_group_id
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  belongs_to :art_group
  MEDIUMS = [
    "Oil pastel on matboard/wood panel",
    "Oil pastel and color pencil on paper",
    "Mixed media on paper",
    "Mixed media on matboard",
    "Mixed media on wood panel",
    "Wood block print",
    "Video installation",
    "Mural",
    "Gouche, oil pastel on paper",
    "Acrylic",
    "Acrylic on canvas",
    "Acrylic on matboard",
    "Acrylic on wood panel",
    "Acrylic on paper"
  ]
  currentYear = Time.new.year
  YEARS = Array (2003..currentYear)
  YEARS.sort! {|x,y| y <=> x }

end
