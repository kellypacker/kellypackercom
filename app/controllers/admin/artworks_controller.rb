module Admin
  class ArtworksController < ApplicationController
    before_filter :authorize
    before_filter :load_artwork, :except => ['index', 'new', 'create']
    layout 'admin'

    def index
      @artworks = Artwork.all.order('created_at DESC')
    end

    def new
      @artwork = Artwork.new
    end

    def show
    end

    def create
      @artwork = Artwork.new(artwork_params)
      if @artwork.save
        redirect_to admin_artworks_path(@artwork), notice: "Artwork created"
      else
        render 'new'
      end
    end

    def edit
    end

    def update
      if @artwork.update_attributes(artwork_params)
        redirect_to admin_artworks_path, notice: "Artwork saved"
      else
        render 'edit'
      end
    end

    def destroy
      @artwork.destroy
      redirect_to admin_artworks_path, notice: "Artwork destroyed"
    end

    private
    def artwork_params
      params.require(:artwork).permit(
        :available, :height, :medium, :sold, :title, :width,
        :year, :image, :price, :art_group_id
      )
    end

    def load_artwork
      @artwork = Artwork.find(params[:id])
    end
  end
end