$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'unidom/standard/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'unidom-standard'
  spec.version     = Unidom::Standard::VERSION
  spec.authors     = [ 'Topbit Du' ]
  spec.email       = [ 'topbit.du@gmail.com' ]
  spec.homepage    = 'https://github.com/topbitdu/unidom-standard'
  spec.summary     = 'Unidom Standard Domain Model Engine 标准领域模型引擎'
  spec.description = 'Unidom (UNIfied Domain Object Model) is a series of domain model engines. The Standard domain model engine includes Standard and Standard Association models. Unidom (统一领域对象模型)是一系列的领域模型引擎。标准领域模型引擎包括标准和标准关联的模型。'
  spec.license     = 'MIT'

  spec.files         = Dir[ '{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md' ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = [ 'lib' ]

  spec.add_dependency 'unidom-common', '~> 1.9'

end
