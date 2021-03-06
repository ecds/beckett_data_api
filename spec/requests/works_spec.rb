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

RSpec.describe '/works', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # work. As you add validations to work, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {}
  end

  let(:invalid_attributes) do
    {}
  end

  # This should return the minimal set of values that should be in the headers
  # in order to pass any filters (e.g. authentication) defined in
  # WorksController, or in your router and rack
  # middleware. Be sure to keep this updated too.
  let(:valid_headers) do
    {}
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      create_list(:work, 4)
      get works_url, headers: valid_headers, as: :json
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      work = create(:work)
      get work_url(work), as: :json
      # puts JSON.pretty_generate(json)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    it 'creates a new work' do
      post works_url, params: { work: valid_attributes },
                      headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'PATCH /update' do
    it 'updates the requested work' do
      work = create(:work)
      patch work_url(work),
            params: { work: {} }, headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested work' do
      work = create(:work)
      delete work_url(work), headers: valid_headers, as: :json
      expect(response).to have_http_status(:not_implemented)
    end
  end
end
