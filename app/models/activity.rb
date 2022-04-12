# frozen_string_literal: true

class Activity < ApplicationRecord
  include LetterMentions
  include Searchable

  belongs_to :work

  enum activity_type: {
    translating: 0,
    writing: 1,
    reading: 2,
    revising: 3,
    directing: 4
  }

  def schema_type
    'Activity'
  end
end
