# Read about factories at https://github.com/thoughtbot/factory_girl
require 'support/utilities'

FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password UserAuthentication::DEFAULT_PASSWORD
  end
end
