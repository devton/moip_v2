# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'moip_v2/version'

Gem::Specification.new do |spec|
  spec.name          = "moip_v2"
  spec.version       = MoipV2::VERSION
  spec.authors       = ["Diogo Biazus"]
  spec.email         = ["diogob@gmail.com"]
  spec.description   = %q{Ruby wrapper to MoIP v2 API}
  spec.summary       = %q{Ruby wrapper to MoIP v2 API}
  spec.homepage      = "https://github.com/diogob/moip_v2"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency "activeresource"
end
