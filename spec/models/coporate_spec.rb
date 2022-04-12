# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Coporate, type: :model do
  context 'default' do
    it 'creates object with defaults' do
      corp = create(:coporate)
      expect(corp.coporate_type).to eq('publisher')
      expect(corp.schema_type).to eq('Organization')
    end
  end
end
