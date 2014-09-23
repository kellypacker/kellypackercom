module Admin
  class ArtworksController < ApplicationController
    before_filter :authorize
    before_filter :load_artwork, :except => ['index', 'new', 'create', 'update_row_order']
    layout 'admin'

    def index
      @artworks = Artwork.rank(:row_order).all
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

    def update_row_order
      @artwork = Artwork.find(artwork_params[:artwork_id])
      @artwork.row_order_position = artwork_params[:row_order_position]
      @artwork.save
      render nothing: true
    end

    private
    def artwork_params
      params.require(:artwork).permit(
        :available, :height, :medium_id, :sold, :title, :width,
        :year, :image, :price, :art_group_id, :slug, :long_title, :notes,
        :sold_to, :sale_date, :sale_location, :sale_notes, :sale_price,
        :sales_tax_paid, :sales_tax_paid_date, :description, :store_link, :row_order,
        :row_order_position, :artwork_id
      )
    end

    def load_artwork
      @artwork = Artwork.find(params[:id])
    end
  end
end