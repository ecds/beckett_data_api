# frozen_string_literal: true

FactoryBot.define do
  factory :mention do
    association :letter, factory: :letter

    factory :personal_mention do
      association :personal, factory: :personal
    end

    factory :location_mention do
      association :location, factory: :location
    end

    factory :coporate_mention do
      association :coporate, factory: :coporate
    end

    factory :event_mention do
      association :event, factory: :event
    end

    factory :work_mention do
      association :work, factory: :work
    end

    factory :activity_mention do
      association :activity, factory: :activity
    end
  end
end
