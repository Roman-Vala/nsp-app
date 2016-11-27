json.array!(@finishes) do |finish|
  json.extract! finish, :id, :description, :price
  json.url finish_url(finish, format: :json)
end
