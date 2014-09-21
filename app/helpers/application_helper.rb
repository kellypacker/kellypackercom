module ApplicationHelper

  def years_artwork_created
    years = Array (2003..Time.new.year)
    years.sort! {|x,y| y <=> x }
  end

  def markdown(text)
    options = {
      filter_html: false,
      autolink: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    renderer = Redcarpet::Render::HTML.new(:hard_wrap => true, :a_parse_flag => true)
    if text.present?
      Redcarpet::Markdown.new(renderer, options).render(text).html_safe
    end
  end
end
