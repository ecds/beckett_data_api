# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Letter, type: :model do
  context 'create with defaults' do
    it 'has a default language of English - Ireland' do
      letter = create(:letter)
      expect(letter.language).to eq('en-IE')
      expect(letter.language_lable).to eq('English - Ireland')
      expect(letter.en_IE?).to be true
    end
  end

  context 'letter with mentions' do
    it 'has mentions' do
      letter = create(
        :letter,
        coporates: create_list(:coporate, 4),
        events: create_list(:event, 5),
        locations: create_list(:location, 3),
        personals: create_list(:personal, 2),
        works: create_list(:work, 1)
      )
      expect(letter.mentions.count).to eq(15)
    end
  end

  context 'letter with recipients' do
    it 'has one personal recipient' do
      letter = create(:letter)
      letter.letter_recipients << create(:personal_recipient, letter: letter)
      expect(letter.personal_recipients.count).to eq(1)
      expect(letter.personal_recipients.first).to be_kind_of(Personal)
    end
  end
end
