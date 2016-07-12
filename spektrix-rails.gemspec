# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spektrix/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "spektrix-rails"
  spec.version       = Spektrix::Rails::VERSION
  spec.authors       = ["Ed Jones"]
  spec.email         = ["ed@errorstudio.co.uk"]
  spec.summary       = %q{Handy things to integrate Spektrix into your Rails application}
  spec.description   = %q{Handy things to integrate Spektrix into your Rails application}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "require_all", "~> 1.3"
  spec.add_dependency "rails", "~> 4.2"
  spec.add_dependency "spektrix"
end
