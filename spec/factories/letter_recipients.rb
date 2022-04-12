# frozen_string_literal: true

FactoryBot.define do
  factory :letter_recipient do
    association :letter, factory: :letter

    factory :personal_recipient do
      association :personal, factory: :personal
    end

    factory :coporate_recipient do
      association :coporate, factory: :coporate
    end
  end
end
