# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message_datasource do
    name "MyString"
    adapter "MyString"
    params "MyString"
  end
end
