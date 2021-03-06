# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/locations', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # location. As you add validations to location, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {}
  end

  let(:invalid_attributes) do
    {}
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # LocationsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      create_list(:location, 4)
      get locations_url, headers: valid_headers, as: :json
      expect(response).to be_successful
      expect(json.count).to be(Location.count)
      expect(json.map(&:keys).flatten.uniq).to include('@context')
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      location = create(:location)
      get location_url(location), as: :json
      expect(response).to be_successful
      expect(json[:name]).to eq(location.name)
      expect(json['@type']).to eq('Place')
      expect(json['@id']).to eq("#{request.host}/location/#{location.id}")
      expect(json[:sameAs]).to be_kind_of(String)
      expect(json[:alternateName]).to be_kind_of(String)
    end
  end

  describe 'POST /create' do
    it 'creates a new location' do
      post locations_url, params: { location: valid_attributes },
                          headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'PATCH /update' do
    it 'updates the requested location' do
      location = create(:location)
      patch location_url(location),
            params: { location: {} }, headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested location' do
      location = create(:location)
      delete location_url(location), headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end
end
