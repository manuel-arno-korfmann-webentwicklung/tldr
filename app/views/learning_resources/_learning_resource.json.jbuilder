json.extract! learning_resource, :id, :url, :description, :created_at, :updated_at
json.url learning_resource_url(learning_resource, format: :json)
