source 'https://rubygems.org'
ruby '2.1.2'
gem 'rails', '4.1.4'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'spring', group: :development
gem 'bootstrap-sass'
gem 'bcrypt'
gem 'activerecord-session_store'
gem 'pundit'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'figaro', '>= 1.0.0.rc1'
gem 'high_voltage'
gem 'sqlite3'
gem 'pg'
#gem 'mysql2'
gem 'simple_form'
gem 'spork-rails'
gem 'wiselinks'
gem 'activemerchant'

group :development do
  gem 'growl', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'capistrano', '~> 3.0.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-rvm', '~> 0.1.1'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-livereload'
  gem 'guard-spork'
  gem 'guard-pow', require: false
  gem 'rack-livereload'
  gem 'guard-spinach'
  gem 'ruby_gntp' , :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end

group :development, :test do
  gem 'spring-commands-rspec'
  gem 'spring-commands-spinach'
  gem 'spring-commands-any'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'rspec-activemodel-mocks'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'thin'
end
group :production do
  gem 'puma'
  gem 'rails_12factor'
end
group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'poltergeist'
end
