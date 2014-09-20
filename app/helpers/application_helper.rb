module ApplicationHelper

  def years_artwork_created
    years = Array (2003..Time.new.year)
    years.sort! {|x,y| y <=> x }
  end
end
