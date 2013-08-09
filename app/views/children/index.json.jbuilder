json.array!(@children) do |child|
  json.extract! child, :last_name, :middle_name, :first_name, :short_name, :sex, :dob, :doc, :doc_number, :desc, :family_id
  json.url child_url(child, format: :json)
end
