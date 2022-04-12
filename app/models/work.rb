# frozen_string_literal: true

# Model class for works
class Work < ApplicationRecord
  include LanguageOptions
  include LetterMentions
  include Searchable

  has_many :work_creators
  has_many :creators, through: :work_creators, source: :personal

  enum work_type: {
    creative_work: 0,
    painting: 1,
    music_composition: 2,
    play: 3
  }

  def schema_type
    work_type.camelcase
  end

  def creator_type
    types = {
      play: 'director',
      painting: 'artist',
      music_composition: 'composer',
      creative_work: 'author'
    }

    type = types[work_type.to_sym]

    creators.count > 1 ? type.pluralize : type
  end
end
