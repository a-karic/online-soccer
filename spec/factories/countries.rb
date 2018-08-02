FactoryBot.define do
  factory :country do
    alpha2 Faker::Address.country_code
    alpha3 Faker::Address.country_code_long
    currency
  end
end
