class ArtGroup < ActiveRecord::Base
  attr_accessible :description, :title, :image, :slug
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :artworks

  before_validation :generate_slug

  def self.find(input)
    input.to_i == 0 ? find_by_slug(input) : super
  end

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= title.parameterize
  end

end
