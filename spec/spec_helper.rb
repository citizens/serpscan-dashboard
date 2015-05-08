ENV["RAILS_ENV"] = "test"
require File.expand_path("../test_app/config/environment.rb",  __FILE__)

require 'rspec/rails'
#require 'capybara'

ENGINE_RAILS_ROOT=File.join(File.dirname(__FILE__), '../')
