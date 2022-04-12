# frozen_string_literal: true

# {
#   "@id": "https://example.org/letters/a9935672-b5bf-11ec-b909-0242ac120002",
#   "@type": "Letter",
#   "dateSent": "1960-04-11",
#   "address": {
#     "@context": "http://schema.org",
#     "@type": "Place"
#   },
#   "recipient": {
#     "@context": "http://schema.org",
#     "@type": "Person"
# }
#   "returnAddress": {
#     "@context": "http://schema.org",
#     "@type": "Place"
#   },
#   "physicalDescription": "",
#   "language": "en-IL",
#   "mentions": [
#     {
#       "@context": "http://schema.org",
#       "@type": "Person"
#     },
#     {
#       "@context": "http://schema.org",
#       "@type": "Play"
#     }
#   ],
#   "significantMentions": [],
#   "repository": {
#     "@context": "http://schema.org",
#     "@type": ""
#   },
#   "verified": ""
# }

json.set! '@id', "#{request.host}#{letter.url_path}"
json.set! '@type', letter.schema_type

json.recipients do
  letter.personal_recipients.each do |personal|
    json.child! do
      json.partial! 'personals/personal', personal: personal, request: request
    end
  end
  letter.coporate_recipients.each do |coporate|
    json.child! do
      json.partial! 'coporates/coporate', coporate: coporate, request: request
    end
  end
end

json.mentions do
  Mention.types.each do |type|
    type_plural = type.to_s.pluralize

    next if letter.public_send(type_plural).empty?

    letter.public_send(type_plural).each do |mention|
      json.child! do
        json.partial! "#{type_plural}/#{type}", "#{type}": mention, request: request
      end
    end
  end
end
