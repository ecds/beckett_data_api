# frozen_string_literal: true

json.array! @coporates do |coporate|
  json.partial! 'coporates/coporate', coporate: coporate, request: request
end
