# frozen_string_literal: true

module LetterMentions
  extend ActiveSupport::Concern

  included do
    has_many :mentions
    has_many :letters, through: :mentions
  end
end
