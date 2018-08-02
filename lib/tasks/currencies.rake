namespace :currencies do
  desc "Create test currencies"
  task create: :environment do
    file = File.read('data/Common-Currency.json')
    currencies = JSON.parse file
    currencies.each do |element|
      currency_params = element.second
      curr = Currency.find_or_initialize_by(currency_params)
      puts "Created currency #{curr.name}" if curr.save
    end
  end

  desc "Update rates"
  task update_rate: :environment do
    file = File.read('data/euro-rate.json')
    objects = JSON.parse file
    objects.each do |object|
      currency = Currency.find_by(code: object['code'])
      next unless currency
      puts "Updated currency #{currency.name}" if currency.update(rate: object['rate'])
    end
  end

  # later
  # desc "Connect countries and currencies"
  # task add_to_countries: :environment do
  #   file = File.read('countries-currencies.json')
  #   countries_currencies = JSON.parse file
  #   countries = Country.all
  #   countries.each do |country|
  #     currency = Currency.find_by(code: countries_currencies[country.alpha2])
  #     next unless currency
  #     country.update(currency: currency)
  #     puts "Connected currency #{currency.name} with country #{country.name}"
  #   end
  # end

end
