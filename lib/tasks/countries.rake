namespace :countries do
  desc "Create countries"
  task create: :environment do
    file = File.read('data/countries.json')
    countries = JSON.parse file
    countries_currencies_file = File.read('data/countries-currencies.json')
    countries_currencies = JSON.parse countries_currencies_file
    countries.each do |country_read|
      alpha2 = country_read['alpha2']
      alpha3 = country_read['alpha3']
      name = country_read['name']
      numeric = country_read['numeric']
      currency = Currency.find_by(code: countries_currencies[alpha2])
      country = Country.find_or_initialize_by(
        name: name,
        alpha2: alpha2,
        alpha3: alpha3,
        numeric: numeric,
        currency: currency
      )
      puts "Created country #{country.name}" if country.save
    end
  end

end
