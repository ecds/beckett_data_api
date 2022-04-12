# frozen_string_literal: true

# {
#   "@context": "https://schema.org",
#   "@type": "Organization",
#   "@id": "https://beckett.emory.edu/resource/a9935672-b5bf-11ec-b909-0242ac120002"
#   "name": "",
#   "description": "",
#   "alternateName": []
# }

json.set! '@context', 'http://schema.org'
json.set! '@id', "#{request.host}#{coporate.url_path}"
json.set! '@type', coporate.schema_type
json.name coporate.authorized_name
json.description coporate.description

if coporate.alternate_names.count > 1
  json.alternateName coporate.alternate_names
else
  json.alternateName coporate.alternate_names.first
end
