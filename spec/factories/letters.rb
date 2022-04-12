# frozen_string_literal: true

FactoryBot.define do
  factory :letter do
    verified { Faker::Boolean.boolean }
    legacy_id { Faker::Number.between(from: 1, to: 700) }
    date_sent { Faker::Date.between(from: '1950-01-01', to: '1988-12-31') }
    address { Faker::Address.full_address }
    physical_description { Faker::Lorem.paragraph }

    after(:create) do |instance, _evaluator|
      instance.reindex(refresh: true)
    end
  end
end
