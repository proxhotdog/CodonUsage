# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'CodonUsage/version'

Gem::Specification.new do |spec|
  spec.name          = "CodonUsage"
  spec.version       = CodonUsage::VERSION
  spec.authors       = ["proxhotdog"]
  spec.email         = ["hotdogcheng@gmail.com"]
  spec.summary       = %q{A ruby gem that parses codon table from http://www.kazusa.or.jp/codon}
  spec.description   = %q{A ruby gem that parses codon table from http://www.kazusa.or.jp/codon and turn it to hash or JSON}
  spec.homepage      = ""
  spec.license       = "GPLv3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
