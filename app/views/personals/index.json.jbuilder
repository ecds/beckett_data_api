# frozen_string_literal: true

json.array! @personals do |personal|
  json.partial! 'personals/personal', personal: personal, request: request
end
