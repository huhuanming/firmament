require 'rails_helper'

RSpec.describe "Qrcodes", :type => :request do
  describe "GET /qrcodes" do
    it "works! (now write some real specs)" do
      get qrcodes_path
      expect(response).to have_http_status(200)
    end
  end
end
