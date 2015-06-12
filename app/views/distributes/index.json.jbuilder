json.array!(@distributes) do |distribute|
  json.extract! distribute, :id, :name, :path
  json.url distribute_url(distribute, format: :json)
end
