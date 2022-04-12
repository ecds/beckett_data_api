# frozen_string_literal: true

class Event < ApplicationRecord
  include LetterMentions
  include Searchable

  enum event_type: {
    event: 0,
    theater_event: 1
  }

  def schema_type
    event_type.camelcase
  end
end
