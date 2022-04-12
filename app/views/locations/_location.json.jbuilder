# frozen_string_literal: true

# {
#   "@context": "https://schema.org",
#   "@type": "Place",
#   "name": "Atlanta",
#   "sameAs": "https://www.geonames.org/4180439/atlanta.html",
#   "description": "Best city in America",
#   "url": "https://beckett.emory.edu/place/a9935672-b5bf-11ec-b909-0242ac120002"
# }

json.set! '@context', 'http://schema.org'
json.set! '@id', "#{request.host}#{location.url_path}"
json.set! '@type', location.schema_type
json.name location.name
json.description location.description

if location.links.count > 1
  json.sameAs location.links
else
  json.sameAs location.links.first
end

if location.alternate_names.count > 1
  json.alternateName location.alternate_names
else
  json.alternateName location.alternate_names.first
end
