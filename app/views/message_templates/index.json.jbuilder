json.array!(@message_templates) do |message_template|
  json.extract! message_template, :id, :message_config_id, :template
  json.url message_template_url(message_template, format: :json)
end
