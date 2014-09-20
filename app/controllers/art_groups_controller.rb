class ArtGroupsController < ApplicationController
  def index
    @art_groups = ArtGroup.all
  end

  def show
    @group = ArtGroup.find(params[:title])
    @group_id = @group.id
    @body_class = "portfolio"
    @works = Artwork.where(:art_group_id => @group_id)
  end

  private
  def art_group_params
    params.require(:art_group).permit(
      :description, :title, :image, :slug
    )
  end

end
