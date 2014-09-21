class ArtGroup < ActiveRecord::Base
  has_attached_file :image,
    :styles => {
      :large => "800x800#",
      :medium => "600x600#",
      :thumb => "300x300#"
    },
    :convert_options => {
      :thumb => "-quality 80 -strip"
    }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_many :artworks

  before_validation :generate_slug

  def self.find(input)
    input.to_i == 0 ? find_by_slug(input) : super
  end

  def to_param
    slug
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
