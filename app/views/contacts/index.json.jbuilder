json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :last_name
  json.url contact_url(contact, format: :json)
end
