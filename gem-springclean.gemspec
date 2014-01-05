# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "gem-springclean"
  spec.version       = "0.0.1"
  spec.authors       = ["Kashyap"]
  spec.email         = ["kashyap.kmbc@gmail.com"]
  spec.summary       = %q{Supply a Gemfile or a Gemfile.lock and cleanup all the unwanted ones}
  spec.description   = %q{Supply a Gemfile or a Gemfile.lock and cleanup all the unwanted ones}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir.glob("**/*").reject { |x| x == "Gemfile.lock" }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
