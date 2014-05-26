json.array!(@message_datasources) do |message_datasource|
  json.extract! message_datasource, :id, :name, :adapter, :params
  json.url message_datasource_url(message_datasource, format: :json)
end
