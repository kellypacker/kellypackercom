class ArtGroup < ActiveRecord::Base
  attr_accessible :description, :title, :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :artworks
end
