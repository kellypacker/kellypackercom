module ArtworksHelper
  def selected_art_group
    params[:filters] && params[:filters][:art_group]
  end
end
