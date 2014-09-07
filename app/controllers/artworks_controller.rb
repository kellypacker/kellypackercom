class ArtworksController < ApplicationController
  def detail
  end

  private
  def artwork_params
    params.require(:artwork).permit(
      :available, :height, :medium, :sold, :title, :width,
      :year, :image, :price, :art_group_id
    )
  end

end
