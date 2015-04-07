# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/crozdesk/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-crozdesk'
  s.version  = OmniAuth::Crozdesk::VERSION
  s.authors  = ['Alexandru Stoian']
  s.email    = ['alex@crozdesk.com']
  s.summary  = 'Crozdesk OAuth2 Strategy for OmniAuth'
  s.homepage = 'https://github.com/crozdesk/omniauth-crozdesk'
  s.license  = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'webmock', '~> 1.21'
  s.add_development_dependency 'rack-test', '~> 0.6'
end
