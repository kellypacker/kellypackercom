class ArtworksController < ApplicationController

  def show
    @artwork = Artwork.find(params[:id])
    @page_title = @artwork.title
    @page_desc = "Artwork by Kelly Packer: #{@artwork.title}, #{@artwork.medium.name}, #{@artwork.year}"
  end
end
