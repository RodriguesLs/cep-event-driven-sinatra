# frozen_string_literal: true

require_relative 'lib/cep/event/driven/version'

Gem::Specification.new do |spec|
  spec.name          = "cep-event-driven"
  spec.version       = Cep::Event::Driven::VERSION
  spec.authors       = ['Felipe Rodrigues da Costa']
  spec.email         = ['fr.costa95@gmail.com']

  spec.summary       = "It's just a zip-code"
  spec.description   = "Some description."
  spec.homepage      = "https://github.com/rodriguesls"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
