# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.kellypacker.com"

# Put links creation logic here.
#
# The root path '/' and sitemap index file are added automatically for you.
# Links are added to the Sitemap in the order they are specified.
#
# Usage: add(path, options={})
#        (default options are used if you don't specify)
#
# Defaults: :priority => 0.5, :changefreq => 'weekly',
#           :lastmod => Time.now, :host => default_host
SitemapGenerator::Sitemap.create do
  add art_groups_path, :changefreq => 'weekly'
  add web_development_path, :changefreq => 'weekly'
  add profile_path, :changefreq => 'weekly'
  add contact_path, :changefreq => 'weekly'
  ArtGroup.find_each do |art_group|
    add art_group_path(art_group), :lastmod => art_group.updated_at
  end
  Artwork.find_each do |artwork|
    add artwork_path(artwork), :lastmod => artwork.updated_at
  end


end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks
