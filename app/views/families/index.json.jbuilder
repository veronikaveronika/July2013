json.array!(@families) do |family|
  json.extract! family, :name, :address, :phone, :desc
  json.url family_url(family, format: :json)
end
