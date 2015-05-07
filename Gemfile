source "https://rubygems.org"
ruby "2.2.2"

# Base
gem "rails", "4.2.1"
gem "sqlite3"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "therubyracer", platforms: :ruby
gem "devise"

group :development, :test do
  gem "dotenv-rails"
  gem "byebug"
  gem "web-console", "~> 2.0"
  gem "spring"
  gem "spring-commands-rspec"
end

group :development do
  gem "bullet"
  gem "letter_opener"
end

group :test do 
  gem "faker"
  gem "capybara"
  gem "poltergeist"
  gem "guard-rspec"
  gem "codeclimate-test-reporter", require: false
  gem "shoulda-matchers"
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "rspec-expectations"
end
