FactoryBot.define do
  factory :currency do
    symbol Faker::Currency.symbol
    name Faker::Currency.name
    code Faker::Currency.code
    rate { rand }
  end
end
