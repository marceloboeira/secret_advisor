require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module SecretAdvisor
  class Application < Rails::Application
    VERSION = "0.0.0"
    
    config.time_zone = ENV["SA_TIME_ZONE"] || "Brasilia"
    config.i18n.default_locale = ENV["SA_DEFAULT_LOCALE"] || :en
    config.active_record.raise_in_transactional_callbacks = true
  
    config.generators do |g|
      g.test_framework :rspec
    end

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: true,
        routing_specs: false,
        controller_specs: false,
        request_specs: true
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end
  end
end
