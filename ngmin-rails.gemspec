# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ngmin/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "ngmin-rails"
  spec.version       = Ngmin::Rails::VERSION
  spec.authors       = ["Jason Morrison", "Brandon Tilley"]
  spec.email         = ["jason.p.morrison@gmail.com", "brandon@brandontilley.com"]
  spec.description   = %q{Use ngmin in the Rails asset pipeline.}
  spec.summary       = %q{Use ngmin in the Rails asset pipeline.}
  spec.homepage      = "https://github.com/jasonm/ngmin-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/).reject {|f| f.match /example/ }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
