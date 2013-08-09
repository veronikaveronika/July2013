json.array!(@parents) do |parent|
  json.extract! parent, :last_name, :middle_name, :first_name, :phone, :sex, :dob, :doc, :doc_number, :desc, :family_id
  json.url parent_url(parent, format: :json)
end
