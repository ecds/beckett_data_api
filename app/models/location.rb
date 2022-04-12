# frozen_string_literal: true

class Location < ApplicationRecord
  include LetterMentions
  include Searchable

  def schema_type
    'Place'
  end
end
