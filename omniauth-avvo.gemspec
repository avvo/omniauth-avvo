# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
require File.expand_path('../lib/omniauth/avvo/version', __FILE__)
Gem::Specification.new do |s|
  s.name = "omniauth-avvo"
  s.version = OmniAuth::Avvo::VERSION
  s.description = 'Avvo.com strategy for OmniAuth'
  s.summary = 'Avvo.com strategy for OmniAuth'
  s.add_dependency "omniauth-oauth2", "~> 1.1"

  s.author = "Jeff Ching"
  s.email = "ching.jeff@gmail.com"
  s.homepage = "http://github.com/chingor13/omniauth-avvo"
  s.license = "MIT"

  s.files = `git ls-files`.split("\n")
  s.test_files = Dir.glob('test/*_test.rb')
end
