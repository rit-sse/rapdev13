source 'https://rubygems.org'

# Rails 3
gem 'rails', '3.2.12'

# Server
gem 'thin', '~> 1.5'

# Database
gem 'sqlite3', '~> 1.3'

# Controllers
gem 'high_voltage', '~> 1.2'
gem 'gravatar-ultimate', '~> 1.0'
gem 'pygments.rb', '~> 0.4', require: true

# Auth
gem 'omniauth-github', '~> 1.1'
gem 'devise', '~> 2.2'
gem 'cancan', '~> 1.6'

# Deploying
#gem 'capistrano'
#gem 'rvm-capistrano'

# Required by rake for RAILS_ENV=production, thus outside :assets
gem 'yard', '~> 0.8.5.2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'bootstrap-sass', '~> 2.3'
  gem 'jquery-rails', '~> 2.2.1'
  gem 'ace-rails-ap'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
end

group :development, :test do
  gem 'rspec-rails', '2.11'
end

group :development do
  gem 'binding_of_caller', '~> 0.6'
  gem 'better_errors', '~> 0.7'
  gem 'yard-activerecord', '~> 0.0.8'
end

group :test do
  gem 'simplecov', require: false
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# To use debugger
# gem 'debugger'
