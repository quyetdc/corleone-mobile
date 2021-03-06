json.array!(@categories) do |category|
  json.extract! category, :id, :name, :path
  json.url category_url(category, format: :json)
end
