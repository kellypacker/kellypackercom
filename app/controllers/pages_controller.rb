class PagesController < ApplicationController
  def contact
    @body_class="contact"
    @page_title = "Contact Kelly Packer Artist & Web Developer in Boise, Idaho"
    @page_desc = "Contact Kelly Packer regarding general inquires, web development project and artwork commissions."
  end

  def web_development
    @body_class ="web-development"
    @page_title = "Kelly Packer Web Developer in Boise, Idaho"
    @page_desc = "Kelly Packer is a web devloper in Boise, Idaho specializing in Javascript and Ruby on Rails. Experienced with Backbone.js, Angular.js, HTML5."
  end

  def profile
    @body_class="profile"
    @page_title = "Kelly Packer is an Artist & Web Developer in Boise, Idaho"
    @page_desc = "Profile of Kelly Packer, artist and web developer in Boise, Idaho. Includes influences, articles and artist statement."
  end
end