# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Rake::Task['users:create'].invoke
Rake::Task['currencies:create'].invoke
Rake::Task['currencies:update_rate'].invoke
