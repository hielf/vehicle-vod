FactoryGirl.define do
  factory :column do
    association :category, factory: :category
    name '测试栏目'
    en_name 'test column'
    status 0
  end
end