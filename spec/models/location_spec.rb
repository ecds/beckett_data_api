# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'default' do
    it 'creates object with defaults' do
      loc = create(:location)
      expect(loc.schema_type).to eq('Place')
    end
  end
end
