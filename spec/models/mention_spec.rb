# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mention, type: :model do
  context 'entity mentioned in letter' do
    it { should validate_presence_of(:letter) }
    it { should validate_presence_of(:mention_type) }

    it 'sets mentioned type' do
      mention = create(:personal_mention)
      expect(mention.letter.present?).to be
      expect(mention.event.present?).not_to be
      expect(mention.personal.present?).to be
      expect(mention.mention_type).to be == 'personal'
    end

    it 'only allows one type' do
      expect do
        create(:coporate_mention,
               event: create(:event))
      end.to raise_error(ActiveRecord::RecordInvalid,
                         'Validation failed: Too many types only one type can be mentioned')
    end

    it 'will not allow additional type to be added' do
      mention = create(:location_mention)
      expect(mention.mention_type).to be == 'location'
      expect(mention.event.present?).not_to be
      mention.update(event: create(:event))
      expect(mention.errors[:too_many_types]).to be == ['only one type can be mentioned']
      mention.reload
      expect(mention.event.present?).not_to be
      expect(mention.mention_type).to be == 'location'
    end
  end
end
