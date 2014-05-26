json.array!(@template_strategies) do |template_strategy|
  json.extract! template_strategy, :id, :message_config_id, :type, :script
  json.url template_strategy_url(template_strategy, format: :json)
end
