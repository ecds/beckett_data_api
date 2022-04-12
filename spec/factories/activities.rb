# frozen_string_literal: true

FactoryBot.define do
  factory :activity do
    association :work, factory: :work
    notes { Faker::TvShows::RuPaul.quote }

    after(:create) do |instance, _evaluator|
      instance.reindex(refresh: true)
    end
  end
end
