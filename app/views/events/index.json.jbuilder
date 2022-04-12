# frozen_string_literal: true

json.array! @events do |event|
  json.partial! 'events/event', event: event, request: request
end
