class Artwork < ActiveRecord::Base
  belongs_to :art_group

  has_attached_file :image,
    :styles => {
      :large => "1200x1200>",
      :medium => "600x600>",
      :thumb => "300x300>"
    }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  before_validation :generate_slug

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

  def to_param
    slug
  end

  def self.find(input)
    input.to_i == 0 ? find_by_slug(input) : super
  end

  def generate_slug
    unless self.slug.present?
      generate_slug!
    end
  end

  def generate_slug!
    self.slug = title.parameterize
  end

end
