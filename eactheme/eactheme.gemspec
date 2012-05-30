$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "eactheme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "eactheme"
  s.version     = Eactheme::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Eactheme."
  s.description = "TODO: Description of Eactheme."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
