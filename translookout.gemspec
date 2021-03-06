# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "translookout/version"

Gem::Specification.new do |spec|
  spec.name          = "translookout"
  spec.version       = Translookout::VERSION
  spec.authors       = ["NishidaRyu416"]
  spec.email         = ["nishidaryu416@gmail.com"]

  spec.summary       = %q{Translookout's client}
  spec.description   = %q{Translookout is an API which helps you to monitor your users.}
  spec.homepage      = "http://www.translookout.work/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

