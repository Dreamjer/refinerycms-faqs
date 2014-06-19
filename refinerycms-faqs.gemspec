# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-faqs'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Faqs extension for Refinery CMS'
  s.date              = '2014-06-03'
  s.summary           = 'FAQs extension for Refinery CMS'
  s.authors           = ['William Makley']
  s.license           = 'MIT'

  s.require_paths     = %w(lib)
  s.files             = `git ls-files`.split($/)
  s.test_files        = s.files.grep(%r{^(test|spec|features)/})

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.1.2'
  s.add_dependency             'acts_as_indexed',     '~> 0.8.0'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.1.2'
  s.add_development_dependency 'guard-rspec'
end
