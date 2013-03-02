# FactoryGirl.sequence(:user_name) { |n| "username#{n}" }
# FactoryGirl.sequence(:user_number) { |n| "997788051#{n}" }
# FactoryGirl.sequence(:user_email) { |n| "user_email#{n}@example.com" }

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :feed_back do
    name "MyString"
    email "text@mymail.com"
    mobile "7799880510"
    message "MyText"
  end
end
