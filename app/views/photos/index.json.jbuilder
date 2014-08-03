json.array!(@photos) do |photo|
  json.extract! photo, :id, :photo
  json.url photo_url(photo, format: :json)
end
