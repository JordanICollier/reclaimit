# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reclaimit/version'

Gem::Specification.new do |spec|
  spec.name          = "reclaimit"
  spec.version       = Reclaimit::VERSION
  spec.authors       = ["Jordan Collier", "Jake Marwil"]
  spec.email         = ["jordanicollier@gmail.com"]

  spec.summary       = %q{Reddit information fetcher.}
  spec.description   = %q{Makes pulling information for Reddit a breeze.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "json"
end
