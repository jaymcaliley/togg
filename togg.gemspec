$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "togg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "togg"
  s.version     = Togg::VERSION
  s.authors     = ["Jay McAliley"]
  s.email       = ["jay.mcaliley@gmail.com"]
  s.homepage    = "https://github.com/jaymcaliley/togg"
  s.summary     = "A simple manager for feature toggling"
  s.description = "Togg implements a simple feature toggler for a Rails application. Features are managed in a yaml configuration file, then wrapped in a toggle block."

  s.files = Dir["{app,config,db,lib}/**/**/*"] + ["MIT-LICENSE", "Rakefile"]
  s.test_files = Dir["test_app/**/*"]

  s.add_dependency "yettings"
end
