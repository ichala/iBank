require 'factory_bot'

FactoryBot.define do
  factory :user do
    name "user #{rand(1..5)}"
    email { "user#{rand(1..5)}@test.com" }
    password { 'password' }
    password_confirmation { 'password' }
    confirmed_at { Date.today }
  end
end
