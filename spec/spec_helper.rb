ENV["RAILS_ENV"] = "test"
require File.expand_path("../test_app/config/environment.rb",  __FILE__)

require 'rspec/rails'
require 'capybara'
require 'webmock'
require 'vcr'

ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')

Capybara.default_driver = :webkit

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  # Include path helpers
  config.include Rails.application.routes.url_helpers
  config.include Capybara::DSL
end

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.ignore_hosts '127.0.0.1', 'localhost'
end
