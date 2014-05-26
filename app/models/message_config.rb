class MessageConfig < ActiveRecord::Base
  has_many :message_templates
  has_many :template_strategies

end
