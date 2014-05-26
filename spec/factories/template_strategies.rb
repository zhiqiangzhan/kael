# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :template_strategy do
    message_config nil
    type ""
    script "MyString"
  end
end
