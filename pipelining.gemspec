# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pipelining/version'

Gem::Specification.new do |spec|
  spec.name          = "pipelining"
  spec.version       = Pipelining::VERSION
  spec.authors       = ["Karl Eklund"]
  spec.email         = ["karl@magplus.com"]
  spec.description   = %q{A pipe takes an object and a block which contains methods to call on the object in sequence.}
  spec.summary       = %q{Pipes.}
  spec.homepage      = "https://github.com/kek/pipelining"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
