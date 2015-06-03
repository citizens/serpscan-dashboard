$:.push File.expand_path("../lib", __FILE__)

require "serpscan-dashboard/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "serpscan-dashboard"
  s.version     = Serpscan::Dashboard::VERSION
  s.authors     = ["Dylan Montgomery", "Citizens In Space, Inc."]
  s.email       = ["mail@citizensinspace.com"]
  s.homepage    = "http://serpscan.com"
  s.summary     = "Rails engine to view and manage your SERP Scan account within your own app."
  s.description = "Dashboard to track your search engine rankings."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "> 4.0.0"
  s.add_dependency "serpscan", "~> 0.1.4"
end
