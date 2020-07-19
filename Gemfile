# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '~> 2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0'
# Use postgres as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Static code analyzer, based on the community Ruby style guide
gem 'rubocop', require: false

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# bulk import of records
gem 'activerecord-import'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  # Load environment variables from .env into ENV
  gem 'dotenv-rails'
  # Rails testing framework
  gem 'rspec-rails', '~> 4.0.0'
  # Keep your Selenium WebDrivers updated automatically
  gem 'selenium-webdriver'
end

group :development do
  # Listen for file changes
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Speeds up development by keeping your application running in the background
  gem 'spring'
  # Watches for file changes
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Used to ensure a clean database state for testing
  gem 'database_cleaner-active_record'
  # Setting up Ruby objects as test data
  gem 'factory_bot_rails'
  # This gem is a port of Perl's Data::Faker library that generates fake data.
  gem 'faker'
  # RSpec formatter that uses a progress bar instead of a string of letters and dots as feedback.
  gem 'fuubar'
  # Rails controller testing
  gem 'rails-controller-testing'
  # rspec-core provides the structure for writing executable examples
  gem 'rspec-core'
  gem 'rspec-support'
end
