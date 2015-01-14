class PagesController < ApplicationController
  def contact
    @body_class="contact"
    @page_title = "Contact Kelly Packer artist & web developer in Butte, Montana"
    @page_desc = "Contact Kelly Packer regarding general inquires, web development projects and artwork commissions."
  end

  def web_development
    @body_class ="web-development"
    @page_title = "Kelly Packer web developer in Butte, Montana"
    @page_desc = "Kelly Packer is a web developer living in Butte, Montana specializing in Javascript and Ruby on Rails. Experienced with Backbone.js, Angular.js, HTML5."
  end

  def profile
    @body_class="profile"
    @page_title = "Kelly Packer is an artist & web developer in Butte, Montana"
    @page_desc = "Profile of Kelly Packer, artist and web developer in Butte, Montana. Includes influences, articles and artist statement."
  end
end
