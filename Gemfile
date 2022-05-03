source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'aws-sdk-s3'
gem 'capistrano', '~> 3.11'
gem 'capistrano-rails', '~> 1.4'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'
gem 'devise-i18n', '~> 1.10', '>= 1.10.2'
gem 'devise', '~> 4.8.1'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'image_processing', '~> 1.12', '>= 1.12.1'
gem 'mailjet', git: 'https://github.com/mailjet/mailjet-gem.git'
gem 'puma', '~> 5.0'
gem 'rails-i18n', '~> 7.0.3'
gem 'rails', '~> 6.1.5'
gem 'webpacker', '~> 5.0'
gem 'ed25519', '~> 1.2'
gem 'bcrypt_pbkdf', '~> 1.0'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'sqlite3', '~> 1.4'
end

group :development do
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'web-console', '>= 4.1.0'
end
