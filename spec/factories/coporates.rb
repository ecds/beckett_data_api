# frozen_string_literal: true

FactoryBot.define do
  factory :coporate do
    authorized_name { Faker::Movies::HitchhikersGuideToTheGalaxy.planet }
    alternate_names { [Faker::Movies::HitchhikersGuideToTheGalaxy.location] }
    description { Faker::Movies::HitchhikersGuideToTheGalaxy.quote }

    after(:create) do |instance, _evaluator|
      instance.reindex(refresh: true)
    end
  end
end
