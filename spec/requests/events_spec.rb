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

RSpec.describe '/events', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # event. As you add validations to event, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {}
  end

  let(:invalid_attributes) do
    {}
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # EventsController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      create_list(:event, 4)
      get events_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      event = create(:event)
      get event_url(event), as: :json
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    it 'creates a new event' do
      post events_url, params: { event: valid_attributes },
                       headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'PATCH /update' do
    it 'updates the requested event' do
      event = create(:event)
      patch event_url(event),
            params: { event: {} }, headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested event' do
      event = create(:event)
      delete event_url(event), headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end
end
