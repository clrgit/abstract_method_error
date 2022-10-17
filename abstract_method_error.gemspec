# frozen_string_literal: true

require_relative "lib/abstract_method_error/version"

Gem::Specification.new do |spec|
  spec.name = "abstract_method_error"
  spec.version = AbstractMethodError::VERSION
  spec.authors = ["Claus Rasmussen"]
  spec.email = ["claus.l.rasmussen@gmail.com"]

  spec.summary = "Provides Kernel#abstract_method"
  spec.description = "Lets you define abstract methods that raise when called"
  spec.homepage = "https://github.com/clrgit/abstract_method_error"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  # Add your production dependencies here
  # spec.add_dependency GEM [, VERSION]

  # Add your development dependencies here
  # spec.add_development_dependency GEM [, VERSION]

  # Also un-comment in spec/spec_helper to use simplecov
  # spec.add_development_dependency "simplecov"
end
