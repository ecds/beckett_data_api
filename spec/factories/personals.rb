# frozen_string_literal: true

FactoryBot.define do
  factory :personal do
    authorized_name { Faker::Movies::Lebowski.character }
    birth_date { Faker::Date.between(from: '1900-01-01', to: '1950-12-31') }
    death_date { Faker::Date.between(from: '1951-01-01', to: '1988-12-31') }
    description { Faker::Movies::Lebowski.quote }
    alternate_names { [Faker::Movies::Lebowski.actor] }
    links { [Faker::Internet.url] }
    images { [Faker::Internet.url] }

    after(:create) do |instance, _evaluator|
      instance.reindex(refresh: true)
    end
  end
end
