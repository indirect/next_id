# frozen_string_literal: true

require_relative "lib/next_id/version"

Gem::Specification.new do |spec|
  spec.name = "next_id"
  spec.version = NextId::VERSION
  spec.authors = ["Andre Arko"]
  spec.email = ["andre@arko.net"]

  spec.summary = "Prefixed, opaque external IDs for Rails"
  spec.description = spec.summary
  spec.homepage = "https://github.com/indirect/next_id"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
