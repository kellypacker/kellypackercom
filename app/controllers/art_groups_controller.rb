class ArtGroupsController < ApplicationController

  def index
    @page_title = "Artwork by Series"
    @page_desc = "Kelly Packer: Artwork by listed by series. Includes artist statements and images."
    @art_groups = ArtGroup.rank(:row_order).all
  end

  def show
    @body_class = "art_group_show"
    @art_group = ArtGroup.find(params[:id])
    @artworks = @art_group.artworks.rank(:row_order).all
    @page_title = "Series: #{@art_group.title}"
    @page_desc = "Kelly Packer: Artwork for the series: #{@art_group.title}."
  end
end
