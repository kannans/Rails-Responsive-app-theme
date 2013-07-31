# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/responsive/app/theme/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-responsive-app-theme"
  spec.version       = Rails::Responsive::App::Theme::VERSION
  spec.authors       = ["kannan S"]
  spec.email         = ["kannanhudson@gmail.com"]
  spec.description   = %q{Making awesome responsive rails application interface}
  spec.summary       = %q{Making awesome responsive rails application interface}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
end
