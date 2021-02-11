FactoryBot.define do
  factory :review do
    topic_id { 1 }
    user_id { 1 }
    game_reviewe { "MyText" }
    score { 1 }
  end
end
