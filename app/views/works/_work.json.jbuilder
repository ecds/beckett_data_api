# frozen_string_literal: true

# {
#   "@context": "https://schema.org",
#   "@type": "CreativeWork",
# }

json.set! '@context', 'http://schema.org'
json.set! '@id', "#{request.host}#{work.url_path}"
json.set! '@type', work.schema_type
