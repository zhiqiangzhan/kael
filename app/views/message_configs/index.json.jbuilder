json.array!(@message_configs) do |message_config|
  json.extract! message_config, :id, :group, :bizType, :name, :desc
  json.url message_config_url(message_config, format: :json)
end
