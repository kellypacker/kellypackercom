class ArtGroupsController < ApplicationController

  def index
    @art_groups = ArtGroup.all
  end

  def show
    @body_class = "portfolio"
    @art_group = ArtGroup.find(params[:id])
    @artworks = @art_group.artworks
  end
end
