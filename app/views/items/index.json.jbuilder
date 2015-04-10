json.array!(@items) do |item|
  json.extract! item, :id, :name, :url, :description, :important, :list_id
  json.url item_url(item, format: :json)
end
