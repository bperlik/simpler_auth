$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simpler_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simpler_auth"
  s.version     = SimplerAuth::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Barbara Perlik"]
  s.email       = ["barbperlik@gmail.com"]
  s.homepage    = "http://barbaraperlik.com"
  s.summary     = "A simple Rails 5 engine gem that add simple authentication to any Rails 5 application."
  s.description = "A simple Rails authentication gem."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.add_dependency "activesupport" ,"~> 5.0.7"
  s.add_dependency "rails", "~> 5.0.7"
  s.add_development_dependency "sqlite3"
  s.require_path = "lib"

end
