# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pry-uber'

Gem::Specification.new do |spec|
  spec.name          = "pry-uber"
  spec.version       = PryUber::VERSION
  spec.authors       = ["Zander Hill"]
  spec.email         = ["Zander@civet.ws"]
  spec.summary       = %q{All the good stuff for Pry without Awesome Print.}
  spec.description   = %q{Good pry stuff w/o awesome print.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'pry', '~> 0.9.12.6'
  spec.add_runtime_dependency 'pry-rails'
  spec.add_runtime_dependency 'pry-doc'
  spec.add_runtime_dependency 'pry-git'
  spec.add_runtime_dependency 'pry-stack_explorer'
  spec.add_runtime_dependency 'pry-remote'
  spec.add_runtime_dependency 'pry-debugger', '~> 0.2.2'
  spec.add_runtime_dependency 'hirb', '~> 0.7.1'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
