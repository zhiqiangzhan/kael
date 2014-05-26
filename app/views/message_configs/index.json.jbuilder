json.array!(@message_configs) do |message_config|
  json.extract! message_config, :id, :group, :biz_type, :name, :desc
  json.url message_config_url(message_config, format: :json)
end
