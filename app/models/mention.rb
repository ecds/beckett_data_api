# frozen_string_literal: true

#
# Model class for Letter mentions
#
class Mention < ApplicationRecord
  include Searchable

  validates :letter, presence: true
  validates :mention_type, presence: true

  before_validation :set_mention_type

  class_attribute :types, default: %i[activity coporate event location personal work]

  types_enum = {}
  types.each_with_index do |type, index|
    types_enum[type] = index
    belongs_to type, optional: true
  end

  enum mention_type: types_enum

  belongs_to :activity, optional: true
  belongs_to :letter

  private

  def set_mention_type
    mentions = types.map { |type| public_send(type) }.compact
    if mentions.count == 1
      self.mention_type = mentions.first.class.to_s.downcase.to_sym
    elsif mentions.count > 1
      errors.add(:too_many_types, 'only one type can be mentioned')
      throw(:abort)
    end
  end
end
