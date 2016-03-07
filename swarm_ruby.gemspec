# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swarm_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "swarm_ruby"
  spec.version       = SwarmRuby::VERSION
  spec.authors       = ["sollipse"]
  spec.email         = ["solipsistic@berkeley.edu"]

  spec.summary       = %q{Track User authenticity with Swarm.}
  spec.description   = %q{Swarm Ruby provides a bare-bones interface on top of the Swarm User Impression API.}
  spec.homepage      = "http://swarm.enterprises/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.2.5"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"

  spec.add_dependency "faraday"
  spec.add_dependency "json"
end
