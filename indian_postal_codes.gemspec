# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indian_postal_codes/version'

Gem::Specification.new do |spec|
  spec.name          = "indian_postal_codes"
  spec.version       = IndianPostalCodes::VERSION
  spec.authors       = ["Devilal Dheer"]
  spec.email         = ["devilal25@gmail.com"]

  spec.summary       = %q{Gem to fetch city, district, state based on Indian postal codes.}
  spec.description   = %q{Gem to fetch details of Indian city, district, state based on Indian postal codes.}
  spec.homepage      = "https://github.com/DevilalDheer/indian_postal_codes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
