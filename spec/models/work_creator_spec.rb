# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WorkCreator, type: :model do
  context 'valid' do
    it { should validate_presence_of(:work) }
  end
end
