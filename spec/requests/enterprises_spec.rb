require 'rails_helper'

RSpec.describe 'Enterprises', type: :request do
  describe 'GET /enterprises' do
    it 'works! (now write some real specs)' do
      get enterprises_path
      expect(response).to have_http_status(200)
    end
  end
end
