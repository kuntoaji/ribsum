require 'date'
require_relative 'lib/simple_lorem/version'

Gem::Specification.new do |s|
  s.name        = 'simple_lorem'
  s.version     = SimpleLorem::VERSION
  s.date        = Date.today.to_s
  s.summary     = "Lightweight Lorem Ipsum text generator"
  s.description = <-EOF
    Simple Lorem is a lightweight Ruby gems library to generate Lorem Ipsum text.
    You can directly call the module functions (e.g. SimpleLorem.paragraph or SimpleLorem.paragraph(2)),
    or include Simple Lorem module to your class.
  EOF
  s.authors     = ["Kunto Aji Kristianto"]
  s.email       = "kuntoaji@kaklabs.com"
  s.files       = ['lib/simple_lorem.rb', 'lib/simple_lorem/version.rb']
  s.homepage    = "https://github.com/kuntoaji/simple_lorem"
  s.license     = "MIT"

  s.required_ruby_version = '>= 2.7.5'
end
