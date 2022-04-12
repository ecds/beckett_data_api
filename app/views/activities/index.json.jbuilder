# frozen_string_literal: true

json.array! @activities do |activity|
  json.partial! 'works/work', work: activity.work, request: request
end
