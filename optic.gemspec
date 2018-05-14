
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "optic/version"

Gem::Specification.new do |spec|
  spec.name          = "optic"
  spec.version       = Optic::VERSION
  spec.authors       = ["Anton Vaynshtok"]
  spec.email         = ["avaynshtok@gmail.com"]

  spec.summary       = %q{Optic API bindings.}
  spec.description   = %q{Optic API bindings.}
  spec.homepage      = "https://www.sutrolabs.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
