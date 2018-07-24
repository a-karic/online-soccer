namespace :users do
  desc "Create test users"
  task create: :environment do
    emails = 10.times.map { Faker::Internet.unique.free_email }
    emails.each do |email|
      User.create!(
        email: email,
        password: Faker::Internet.password
      )
      puts "User create with email #{email}"
    end
  end

end
