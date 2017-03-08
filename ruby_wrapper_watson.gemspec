# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_wrapper_watson/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_wrapper_watson"
  spec.version       = RubyWrapperWatson::VERSION
  spec.authors       = ["Scott Bewick"]
  spec.email         = ["bewick.scott@gmail.com"]

  spec.summary       = "Ruby wrapper for IBM's Watson API Personality Insights and Tone Analyzer services"
  spec.description   = "Ruby wrapper for IBM's Watson API services - Personality Insights and Tone Analyzer"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "excon", "~> 0.55.0"
  spec.add_dependency "twitter", "~> 5.17.0"
  spec.add_dependency "json", "~> 1.8"
  spec.add_dependency "dotenv", "~> 2.2.0"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
