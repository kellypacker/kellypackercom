class ArtGroupsController < ApplicationController

  def index
    @art_groups = ArtGroup.rank(:row_order).all
  end

  def show
    @body_class = "art_group_show"
    @art_group = ArtGroup.find(params[:id])
    @artworks = @art_group.artworks.rank(:row_order)
  end
end
