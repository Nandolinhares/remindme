json.extract! database, :id, :name, :author, :description, :date, :created_at, :updated_at
json.url database_url(database, format: :json)
