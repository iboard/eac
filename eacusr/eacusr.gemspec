$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "eacusr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "eacusr"
  s.version     = Eacusr::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Eacusr."
  s.description = "TODO: Description of Eacusr."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mongoid"
  s.add_development_dependency "bson_ext"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara-webkit"
  
end
