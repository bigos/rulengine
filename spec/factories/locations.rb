# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    depot_id 1
    block "MyString"
    column 1
    level 1
    mixed false
  end
end
