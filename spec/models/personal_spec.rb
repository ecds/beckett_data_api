# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Personal, type: :model do
  context 'searching' do
    it 'searches personal by name' do
      create_list(:personal, 10)
      first = Personal.first
      results = Personal.search(first.authorized_name)
      expect(results.first.authorized_name).to eq(first.authorized_name)
    end
  end
end
