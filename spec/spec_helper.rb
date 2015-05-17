ENV["RAILS_ENV"] ||= "test"

require "codeclimate-test-reporter"
require File.expand_path("../../config/environment", __FILE__)
require "rspec/rails"
require "capybara/rails"
require "capybara/rspec"
require "capybara/poltergeist"
require "shoulda/matchers"
require "factory_girl_rails"
require "faker"
require "public_activity/testing"
include Warden::Test::Helpers

PublicActivity.enabled = true
CodeClimate::TestReporter.start if ENV["CODECLIMATE_REPO_TOKEN"].present?
Warden.test_mode!
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }
ActiveRecord::Migration.maintain_test_schema!


RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
  config.infer_spec_type_from_file_location!
end

Capybara.javascript_driver = :poltergeist
Capybara.default_selector = :css
Capybara.default_wait_time = 5
Capybara.ignore_hidden_elements = false
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, { js_errors: false, js_warnings: false })
end

