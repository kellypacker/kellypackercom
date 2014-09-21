class ArtGroupsController < ApplicationController

  def index
    @art_groups = ArtGroup.all
  end

  def show
    @body_class = "art_group_show"
    @art_group = ArtGroup.find(params[:id])
    @artworks = @art_group.artworks
  end
end
