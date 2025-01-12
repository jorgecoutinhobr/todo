FactoryBot.define do
  factory :user do
    email { Randamu::Account.email }
    username { Randamu::Account.username }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
