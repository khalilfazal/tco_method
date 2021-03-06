# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tco_method/version"

Gem::Specification.new do |spec|
  spec.name          = "tco_method"
  spec.version       = TCOMethod::VERSION
  spec.authors       = ["Danny Guinther"]
  spec.email         = ["dannyguinther@gmail.com"]
  spec.summary       = %q{Simplifies compiling code with tail call optimization in MRI Ruby.}
  spec.description   = %q{Simplifies compiling code with tail call optimization in MRI Ruby.}
  spec.homepage      = "https://github.com/tdg5/tco_method"
  spec.license       = "MIT"

  spec.required_ruby_version = "~> 2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^test/})
  spec.require_paths = ["lib"]

  spec.add_dependency "method_source", "~> 0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"
end
