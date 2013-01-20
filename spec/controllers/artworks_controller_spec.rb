require 'spec_helper'

describe ArtworksController do

  describe "GET 'detail'" do
    it "should be successful" do
      get 'detail'
      response.should be_success
    end
  end

end
