class Artwork < ActiveRecord::Base
  belongs_to :art_group
  belongs_to :medium

  has_attached_file :image,
    :styles => {
      :large => "1200x1200>",
      :medium => "600x600>",
      :thumb => "300x300>"
    }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  before_validation :generate_slug

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
