require 'rails_helper'

RSpec.describe EnterprisesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/enterprises').to route_to('enterprises#index')
    end

    it 'routes to #new' do
      expect(get: '/enterprises/new').to route_to('enterprises#new')
    end

    it 'routes to #show' do
      expect(get: '/enterprises/1').to route_to('enterprises#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/enterprises/1/edit').to route_to('enterprises#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/enterprises').to route_to('enterprises#create')
    end

    it 'routes to #update' do
      expect(put: '/enterprises/1').to route_to('enterprises#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/enterprises/1').to route_to('enterprises#destroy', id: '1')
    end
  end
end
