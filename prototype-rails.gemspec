Gem::Specification.new do |spec|
  spec.name     = 'prototype-rails'
  spec.version  = '5.0.0'
  spec.summary  = 'Prototype, Scriptaculous, and RJS helpers for Rails 7.2 apps'
  spec.description = 'Prototype, Scriptaculous, and RJS helpers for Rails 7.2 apps. Maintained privately; no support or PRs.'
  spec.homepage = 'https://github.com/Harris-HealthAlliance/prototype_rails'
  spec.author   = 'Harris Health Alliance'
  spec.required_ruby_version = '>= 3.1'

  spec.files = %w(README.md Rakefile Gemfile MIT-LICENSE) + Dir['lib/**/*', 'vendor/**/*']

  spec.add_dependency('rails', '>= 7.2', '< 7.3')
  spec.add_development_dependency('mocha')
  spec.license = "MIT"
end
