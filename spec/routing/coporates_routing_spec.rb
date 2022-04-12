# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CoporatesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/coporates').to route_to('coporates#index')
    end

    it 'routes to #show' do
      expect(get: '/coporates/1').to route_to('coporates#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/coporates').to route_to('coporates#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/coporates/1').to route_to('coporates#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/coporates/1').to route_to('coporates#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/coporates/1').to route_to('coporates#destroy', id: '1')
    end
  end
end
