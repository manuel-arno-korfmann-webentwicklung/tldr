json.extract! resource, :id, :url, :description, :created_at, :updated_at
json.url resource_url(resource, format: :json)
