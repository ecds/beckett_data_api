# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'default' do
    it 'creates object with defaults' do
      event = create(:event)
      expect(event.event_type).to eq('event')
      expect(event.schema_type).to eq('Event')
    end
  end
end
