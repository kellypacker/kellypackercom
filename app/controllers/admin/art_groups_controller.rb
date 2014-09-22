module Admin
  class ArtGroupsController < ApplicationController
    before_filter :authorize
    before_filter :load_art_group, :except => ["index", "new", "create", "update_row_order"]
    layout 'admin'

    def index
      @art_groups = ArtGroup.rank(:row_order).all
    end

    def new
      @art_group = ArtGroup.new
    end

    def show

    end

    def edit
    end

    def create
      @art_group = ArtGroup.new(art_group_params)
      if @art_group.save
        redirect_to admin_art_groups_path(@art_group), notice: "Art group saved"
      else
        render 'new'
      end
    end

    def update
      if @art_group.update_attributes(art_group_params)
        redirect_to admin_art_groups_path, notice: 'Art group was successfully updated.'
      else
        render 'edit'
      end
    end

    def destroy
      @art_group.destroy
      redirect_to admin_art_groups_path
    end

    def update_row_order
      @art_group = ArtGroup.find(art_group_params[:art_group_id])
      @art_group.row_order_position = art_group_params[:row_order_position]
      @art_group.save
      render nothing: true
    end

    private
    def art_group_params
      params.require(:art_group).permit(
        :title, :description, :image, :slug, :row_order, :row_order_position,
        :art_group_id, :artist_statement
      )
    end

    def load_art_group
      @art_group = ArtGroup.find(params[:id])
    end
  end
end