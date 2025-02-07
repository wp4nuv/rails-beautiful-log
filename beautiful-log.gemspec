# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beautiful/log/version'

Gem::Specification.new do |spec|
  spec.name          = 'rails-beautiful-log'
  spec.version       = Beautiful::Log::VERSION
  spec.authors       = ['wp4nuv']
  spec.email         = ['wp4nuv@me.com']

  spec.summary       = ''
  spec.description   = 'beautiful-log provides a delightful means of displaying useful and beautiful log in Ruby on Rails application.'
  spec.homepage      = 'https://github.com/wp4nuv/rails-beautiful-log/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.6.3'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'ostruct', '~> 0.6'
  spec.add_dependency 'colorize', '~> 0.8.1'
  spec.add_dependency 'awesome_print', '~> 1.8.0'
end
