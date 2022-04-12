# frozen_string_literal: true

class Personal < ApplicationRecord
  include LetterMentions
  include Searchable

  has_many :work_creators
  has_many :works, through: :work_creators

  has_many :letter_recipients
  has_many :letters, through: :letter_recipients

  def schema_type
    'Person'
  end
end
