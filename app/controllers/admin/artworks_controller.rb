module Admin
  class ArtworksController < ApplicationController
    before_filter :authorize
    layout 'admin'

    def index
    end
  end
end