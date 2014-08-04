# coding: utf-8
$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'dimensions-rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |gem|
  gem.authors       = ['Elia Schito']
  gem.email         = ['elia@schito.me']
  gem.description   = %q{Use dimensions by @sstephenson to add automatic images size and improve browser rendering}
  gem.summary       = %q{Improve browser rendering adding the size to <img> tags}
  gem.homepage      = 'http://elia.github.com/dimensions-rails'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'dimensions-rails'
  gem.require_paths = ['lib']
  gem.version       = Dimensions::Rails::VERSION

  gem.add_runtime_dependency 'dimensions'
  gem.add_runtime_dependency 'railties',        '>= 3.0', '< 4.2'
  gem.add_runtime_dependency 'actionpack',      '>= 3.0', '< 4.2'
  gem.add_runtime_dependency 'activesupport',   '>= 3.0', '< 4.2'
  gem.add_development_dependency 'rails',       '>= 3.0', '< 4.2'
  gem.add_development_dependency 'rspec-rails', '~> 2.0'
end
