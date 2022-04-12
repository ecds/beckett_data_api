# frozen_string_literal: true

# {
#   "@context": "https://schema.org",
#   "@type": "Person",
#   "name": "Kay Boyle",
#   "birthDate": 1902,
#   "deathDate": 1992,
#   "sameAs": "https://viaf.org/viaf/49222285/#Boyle,_Kay,_1902-1992",
#   "image": "https://upload.wikimedia.org/wikipedia/commons/3/3c/KayBoyle.jpg",
#   "description": "writer, teacher, and activist was born in St Paul, Minnesota....",
#   "url": "https://beckett.emory.edu/resource/a9935672-b5bf-11ec-b909-0242ac120002"
# }

json.set! '@context', 'http://schema.org'
json.set! '@id', "#{request.host}#{personal.url_path}"
json.set! '@type', personal.schema_type
json.name personal.authorized_name
json.birthDate personal.birth_date
json.deathDate personal.death_date
json.description personal.description

if personal.links.count > 1
  json.sameAs personal.links
else
  json.sameAs personal.links.first
end

if personal.images.count > 1
  json.image personal.images
else
  json.image personal.images.first
end

if personal.alternate_names.count > 1
  json.alternateName personal.alternate_names
else
  json.alternateName personal.alternate_names.first
end
