# coding: utf-8
require File.expand_path('../lib/dimensions-rails/version', __FILE__)

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
  gem.add_runtime_dependency 'railties',      '~> 3.0'
  gem.add_runtime_dependency 'actionpack',    '~> 3.0'
  gem.add_runtime_dependency 'activesupport', '~> 3.0'
end
