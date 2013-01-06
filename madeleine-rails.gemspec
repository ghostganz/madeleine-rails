# -*- coding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'madeleine/rails/version'

Gem::Specification.new do |s|
  s.name = 'madeleine-rails'
  s.version = Madeleine::Rails::VERSION

  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.9.3"
  s.require_path = 'lib'

  s.author = "Anders Bengtsson"
  s.email = "ndrsbngtssn@yahoo.se"
  s.summary = "Madeleine persistence for Rails based applications"
  s.homepage = "http://github.com/ghostganz/madeleine-rails"

  s.files = Dir.glob("lib/**/*.rb") +
    ['README.md', 'COPYING']

  s.add_dependency 'madeleine-rack'

  s.add_development_dependency 'rspec'
end
