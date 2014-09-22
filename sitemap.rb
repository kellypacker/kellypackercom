require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://www.kellypacker.com'
SitemapGenerator::Sitemap.create do
  add '/home', :changefreq => 'daily', :priority => 0.9
  add '/profile', :changefreq => 'weekly'
  add '/web-development', :changefreq => 'weekly'
  add '/contact', :changefreq => 'weekly'
  add '/artwork', :changefreq => 'weekly'
end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks