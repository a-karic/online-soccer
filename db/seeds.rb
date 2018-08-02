admin = AdminUser.find_or_initialize_by(email: 'admin@example.com')
admin.password = '123456'
admin.save if Rails.env.development? && admin.new_record?
Rake::Task['users:create'].invoke
Rake::Task['currencies:create'].invoke
Rake::Task['countries:create'].invoke
