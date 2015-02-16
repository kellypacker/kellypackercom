class ArtGroup < ActiveRecord::Base
  include RankedModel
  retina!
  has_many :artworks
  ranks :row_order

  has_attached_file :image,
    :styles => {
      :list => "300x300#",
      :thumb => "75x75#"
    },
    :retina => { :quality => 80 },
    :convert_options => {
      :list => "-quality 80 -strip",
      :thumb => "-quality 80 -strip"
    }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

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

  def next
    ArtGroup.where("row_order > ?", self.row_order).first
  end

  def prev
    ArtGroup.where("row_order < ?", self.row_order).last
  end
end
