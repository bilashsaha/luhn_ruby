# frozen_string_literal: true

require_relative "lib/luhn_ruby/version"

Gem::Specification.new do |spec|
  spec.name = "quick_luhn_ruby"
  spec.version = Luhn::VERSION
  spec.authors = ["Bilash Saha"]
  spec.email = ["bilashsaha03@gmail.com"]

  spec.summary = "Library for card number validation using Luhn Algorithm"
  spec.description = "The simplest library to validate card numbers using Luhn Algorithm"
  spec.homepage = "https://github.com/bilashsaha/luhn_ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bilashsaha/luhn_ruby"
  spec.metadata["changelog_uri"] = "https://github.com/bilashsaha/luhn_ruby/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
