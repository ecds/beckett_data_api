# frozen_string_literal: true

class Coporate < ApplicationRecord
  include LetterMentions
  include Searchable

  has_many :letter_recipients
  has_many :letters, through: :letter_recipients

  enum coporate_type: {
    publisher: 0,
    hotel: 1
  }

  def schema_type
    'Organization'
  end
end
