# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    description { Faker::Lorem.paragraph }
    date_attended { Faker::Date.between(from: '1950-01-01', to: '1988-12-31') }
    place { Faker::Address.city }
    event_name { Faker::Lorem.word }

    after(:create) do |instance, _evaluator|
      instance.reindex(refresh: true)
    end
  end
end
