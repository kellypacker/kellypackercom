class ArtGroupsController < ApplicationController
  def index
    @art_groups = ArtGroup.all
  end

  def show
    @group = ArtGroup.find(params[:title])
    @group_id = @group.id
    @body_id = "portfolio_section"
    @works = Artwork.where(:art_group_id => @group_id)
  end

end
