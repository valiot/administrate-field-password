$:.push File.expand_path('../lib', __FILE__)

require 'administrate/field/password'

Gem::Specification.new do |gem|
  gem.name = 'administrate-field-password'
  gem.version = Administrate::Field::Password::VERSION
  gem.authors = ['Adrian Rangel']
  gem.email = ['adrian@disruptiveangels.com']
  gem.homepage = 'https://github.com/disruptiveangels/administrate-field-password'
  gem.summary = 'Add Password fields to Administrate'
  gem.description = 'Easily add Password fields to your administrate views'
  gem.license = 'MIT'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_dependency 'administrate', '~> 0.1.2'
  gem.add_dependency 'rails', '~> 4.2'
end
