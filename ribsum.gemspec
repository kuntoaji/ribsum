require 'date'
require_relative 'lib/ribsum/version'

Gem::Specification.new do |s|
  s.name        = 'ribsum'
  s.version     = Ribsum::VERSION
  s.date        = Date.today.to_s
  s.summary     = 'Lightweight Lorem Ipsum text generator'
  s.description = 'Ribsum is a lightweight Ruby gems library to generate Lorem Ipsum text. You can directly call the module functions (e.g. Ribsum.paragraph or Ribsum.paragraph(2)) or include Ribsum module to your class.'
  s.authors     = ['Kunto Aji Kristianto']
  s.email       = 'kuntoaji@kaklabs.com'
  s.files       = ['lib/ribsum.rb', 'lib/ribsum/version.rb']
  s.homepage    = 'https://github.com/kuntoaji/ribsum'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.7.5'
end
