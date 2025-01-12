FactoryBot.define do
  factory :list do
    association :user
    title { Randamu::Text.title }
  end
end
