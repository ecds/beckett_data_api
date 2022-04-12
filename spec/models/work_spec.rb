# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Work, type: :model do
  context 'create with defaults' do
    it 'has a default language of English - Ireland' do
      work = create(:work)
      expect(work.language).to eq('en-IE')
      expect(work.language_lable).to eq('English - Ireland')
      expect(work.en_IE?).to be true
      expect(work.en_US?).to be false
      expect(work.work_type).to eq('creative_work')
      expect(work.creative_work?).to be true
      expect(work.music_composition?).to be false
      expect(work.creator_type).to eq('author')
      expect(work.schema_type).to eq('CreativeWork')
    end
  end

  context 'different creator types' do
    it 'artist when painting' do
      work = create(:work, work_type: 'painting')
      expect(work.creator_type).to eq('artist')
    end

    it 'composer when music' do
      work = create(:work, work_type: 'music_composition')
      expect(work.creator_type).to eq('composer')
    end

    it 'author when writing' do
      work = create(:work, work_type: 'play')
      expect(work.creator_type).to eq('director')
    end

    it 'pluralizes the creator type when more than one cretor' do
      work = create(:work, work_type: 'music_composition')
      work.creators << create_list(:personal, 2)
      expect(work.creator_type).to eq('composers')
    end
  end
end
