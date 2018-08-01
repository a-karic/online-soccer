namespace :users do
  desc "Create test users"
  task create: :environment do
    emails = 10.times.map { Faker::Internet.unique.free_email }
    emails.each do |email|
      user = User.find_or_initialize_by(email: email)
      user.password = Faker::Internet.password
      puts "User create with email #{email}" if user.save
    end
  end
end
