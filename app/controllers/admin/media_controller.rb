module Admin
  class MediaController < ApplicationController
    before_filter :authorize
    before_filter :load_medium, :except => ['index', 'new', 'create']
    layout 'admin'

    def index
      @media = Medium.all.order("name ASC")
    end

    def new
      @medium = Medium.new
    end

    def show
    end

    def create
      @medium = Medium.new(medium_params)
      if @medium.save
        redirect_to admin_media_path(@medium), notice: "Medium created"
      else
        render 'new'
      end
    end

    def edit
    end

    def update
      if @medium.update_attributes(medium_params)
        redirect_to admin_media_path, notice: "Medium saved"
      else
        render 'edit'
      end
    end

    def destroy
      @medium.destroy
      redirect_to admin_media_path, notice: "Medium destroyed"
    end

    private
    def medium_params
      params.require(:medium).permit(
        :name
      )
    end

    def load_medium
      @medium = Medium.find(params[:id])
    end
  end
end