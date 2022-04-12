# frozen_string_literal: true

json.array! @locations do |location|
  json.partial! 'locations/location', location: location, request: request
end
