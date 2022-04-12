# frozen_string_literal: true

class Letter < ApplicationRecord
  include LanguageOptions
  include Searchable

  has_many :mentions
  has_many :activities, through: :mentions
  has_many :coporates, through: :mentions
  has_many :events, through: :mentions
  has_many :locations, through: :mentions
  has_many :personals, through: :mentions
  has_many :works, through: :mentions

  has_many :letter_recipients
  has_many :personal_recipients, through: :letter_recipients, source: :personal
  has_many :coporate_recipients, through: :letter_recipients, source: :coporate

  def schema_type
    'Letter'
  end
end
