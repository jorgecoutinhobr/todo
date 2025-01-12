FactoryBot.define do
  factory :item do
    association :list
    association :user
    title { Randamu::Text.title }
    description { Randamu::Text.phrase }
    priority { :normal }
    date { Date.today }
    completed { false }
  end
end
