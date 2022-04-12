# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PersonalsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/personals').to route_to('personals#index')
    end

    it 'routes to #show' do
      expect(get: '/personals/1').to route_to('personals#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/personals').to route_to('personals#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/personals/1').to route_to('personals#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/personals/1').to route_to('personals#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/personals/1').to route_to('personals#destroy', id: '1')
    end
  end
end
