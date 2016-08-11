FactoryGirl.define do
  factory :post do
    title {"This is a title"}
    description {"this is a description"}
    user_id {1}
    rate {rand(10...100)}
    association :user, factory: :user
    # association :subcategory, factory: :subcategory

  end
end
