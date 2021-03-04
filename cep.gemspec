# frozen_string_literal: true

require_relative 'lib/cep/version'

Gem::Specification.new do |spec|
  spec.name          = "cep"
  spec.version       = Cep::VERSION
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
  spec.add_dependency('puma', '5.2.2')
  spec.add_dependency('redis', '3.3.1')
  spec.add_dependency('sinatra', '2.1.0')
  spec.add_dependency('sinatra-contrib', '2.1.0')
end
