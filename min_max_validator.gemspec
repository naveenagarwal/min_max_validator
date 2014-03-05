# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'min_max_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "min_max_validator"
  spec.version       = MinMaxValidator::VERSION
  spec.authors       = ["Naveen Agarwal"]
  spec.email         = ["naveenagarwal287@gmail.com"]
  spec.summary       = %q{mininum and maximum value validator for the two attributes.}
  spec.description   = %q{mininum and maximum value validator for the two attributes.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "activemodel", "~> 4.0.0"
end
