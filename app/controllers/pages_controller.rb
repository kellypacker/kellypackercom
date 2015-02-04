class PagesController < ApplicationController
  def contact
    @body_class="contact"
    @page_title = "Contact Kelly Packer artist & web developer"
    @page_desc = "Contact Kelly Packer regarding general inquires, web development projects and artwork commissions."
  end

  def web_development
    @body_class ="web-development"
    @page_title = "Web Developer | Front-end Developer"
    @page_desc = "Kelly Packer is a web developer specializing in Javascript and Ruby on Rails. Experienced with Backbone.js, Angular.js, HTML5, Canvas."
  end

  def profile
    @body_class="profile"
    @page_title = "Profile of Kelly Packer Artist & Web Developer"
    @page_desc = "Profile of Kelly Packer, artist and web developer. Includes influences, articles and artist statement."
  end
end
