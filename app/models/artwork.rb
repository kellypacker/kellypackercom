class Artwork < ActiveRecord::Base
  belongs_to :art_group
  belongs_to :medium

  include RankedModel
  ranks :row_order

  has_attached_file :image,
    :styles => {
      :large => "1200x1200>",
      :medium => "800x800#",
      :thumb => "75x75#"
    },
    :convert_options => {
      :medium => "-quality 80 -strip",
      :thumb => "-quality 80 -strip"
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

  def next
    Artwork.where("row_order > ?", self.row_order).first
  end

  def prev
    Artwork.where("row_order < ?", self.row_order).last
  end
end
