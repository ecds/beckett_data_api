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

json.partial! 'workss/work', work: activity.work, request: request
