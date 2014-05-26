# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message_template do
    message_config nil
    template "MyString"
  end
end
