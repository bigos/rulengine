json.array!(@locations) do |location|
  json.extract! location, :id, :depot_id, :block, :column, :level, :mixed
  json.url location_url(location, format: :json)
end
