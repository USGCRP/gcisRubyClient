# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "gcisRubyClient"
  spec.version       = '1.0'
  spec.authors       = ["Kat Tipton"]
  spec.email         = ["ktipton@usgcrp.gov"]
  spec.summary       = %q{GCIS Ruby Client}
  spec.description   = %q{A ruby REST clinet for the Global Change Information System at data.globalchange.gov.}
  spec.license       = "CC0"

  spec.files         = ['lib/gcisRubyClient.rb']
  spec.executables   = ['bin/gcisRubyClient']
  spec.test_files    = ['tests/test_gcisRubyClient.rb']
  spec.require_paths = ["lib"]
end
