# frozen_string_literal: true

FactoryBot.define do
  factory :work_creator do
    association :work, factory: :work
    association :personal, factory: :personal
  end
end
