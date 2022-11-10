require_relative 'lib/jarvis/version'

Gem::Specification.new do |spec|
  spec.name       = 'jarvis'
  spec.version    = Jarvis::VERSION
  spec.authors    = ['Lukasz Czapiewski']
  spec.email      = ['luke@mmtm.io']
  spec.homepage    = 'https://github.com/Ancez/jarvis'
  spec.summary     = 'Fill this in'
  spec.description = 'Fill this in'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Ancez/jarvis'
  spec.metadata['changelog_uri'] = 'https://github.com/Ancez/jarvis/blob/master/CHANGELOG.md'

  spec.files = Dir['{app,config,db,lib}/**/*', 'spec', 'LICENSE.txt', 'Rakefile', 'README.md']

  spec.add_dependency 'rails'
  spec.add_dependency 'templates-rails'
  spec.test_files = Dir["spec/**/*"]
end
