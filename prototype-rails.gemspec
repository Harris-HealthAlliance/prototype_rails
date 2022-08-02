Gem::Specification.new do |spec|
  spec.name     = 'prototype-rails'
  spec.version  = '4.0.6'
  spec.summary  = 'Prototype, and RJS for Ruby on Rails'
  spec.homepage = 'http://github.com/rails/prototype-rails'
  spec.author   = 'Xavier Noria'
  spec.email    = 'fxn@hashref.com'

  spec.files = %w(README.md Rakefile Gemfile MIT-LICENSE) + Dir['lib/**/*', 'vendor/**/*']

  spec.add_dependency('rails', '>= 5.0')
  spec.add_development_dependency('mocha')
  spec.license = "MIT"
end
