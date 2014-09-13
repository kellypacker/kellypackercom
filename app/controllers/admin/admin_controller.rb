module Admin
  class AdminController < ApplicationController
    before_filter :authorize
    layout 'admin'

    def dashboard
    end
  end
end