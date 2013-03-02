# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :faq do
    qlabel "MyString"
    answer "MyText"
  end
end
