# frozen_string_literal: true

json.array! @works do |work|
  json.partial! 'works/work', work: work, request: request
end
