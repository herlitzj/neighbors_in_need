json.extract! request, :id, :title, :description, :amount, :location, :created_at, :updated_at
json.url request_url(request, format: :json)
