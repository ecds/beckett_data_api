# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Activity, type: :model do
  context 'default' do
    it 'creates object with defaults' do
      activity = create(:activity)
      expect(activity.activity_type).to eq('writing')
      expect(activity.schema_type).to eq('Activity')
    end
  end
end
