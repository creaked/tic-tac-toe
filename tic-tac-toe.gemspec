# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "tic-tac-toe"
  spec.authors       = ["William Chellman"]
  spec.email         = ["creaked@gmail.com"]
  spec.summary       = %q{2 player command line tic-tac-toe game}
  spec.license       = "MIT"

  spec.files         = ['lib/tic-tac-toe.rb']
  spec.executables   = ['bin/tic-tac-toe']
  spec.test_files    = ['spec/test_spec.rb']
  spec.require_paths = ["lib"]
end