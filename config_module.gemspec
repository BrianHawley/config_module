# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "config_module/version"

Gem::Specification.new do |gem|
  gem.name = "config_module"
  gem.version = ConfigModule::VERSION
  gem.authors = ["Anthony M. Cook"]
  gem.email = ["github@anthonymcook.com"]
  gem.description =
    "Wrap a configuration file in a module for easy use throughout your application. Inspired by Rails."
  gem.summary = "Load important configuration files into their own modules!"
  gem.homepage = "http://github.com/acook/config_module"
  gem.licenses = %w[MIT LGPL-3.0]

  gem.files = `git ls-files`.split($/)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "uspec", "~> 0.1.0"
end
