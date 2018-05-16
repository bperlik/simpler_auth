$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simpler_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simpler_auth"
  s.version     = SimplerAuth::VERSION
  s.authors     = ["Barbara Perlik"]
  s.email       = ["barbperlik@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SimplerAuth."
  s.description = "TODO: Description of SimplerAuth."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.7"

  s.add_development_dependency "sqlite3"
end
