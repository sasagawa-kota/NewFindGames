FactoryBot.define do
  factory :topic do
    category_id { 1 }
    title { "MyString" }
    description { "MyText" }
    reviews_count { 1 }
    package_image { 1 }
  end
end
