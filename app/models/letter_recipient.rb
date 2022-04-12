# frozen_string_literal: true

class LetterRecipient < ApplicationRecord
  include Searchable

  belongs_to :letter
  belongs_to :coporate, optional: true
  belongs_to :personal, optional: true

  validates :letter, presence: true
end
