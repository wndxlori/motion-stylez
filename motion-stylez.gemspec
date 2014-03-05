# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'motion-stylez/version'

Gem::Specification.new do |spec|
  spec.name          = "motion-stylez"
  spec.version       = MotionStylez::VERSION
  spec.authors       = ["Jack Dean Watson-Hamblin"]
  spec.email         = ["info@fluffyjack.com"]
  spec.summary       = %q{RubyMotion stylesheet library based off RMQ (https://github.com/infinitered/cdq)}
  spec.description   = %q{A super basic RubyMotion stylesheet library based off Todd Werth's RMQ library (https://github.com/infinitered/cdq) that lets you centralize your view styles}
  spec.homepage      = "https://github.com/FluffyJack/motion-stylez"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.3.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "motion-redgreen"
end
