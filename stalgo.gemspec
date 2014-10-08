# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stalgo/version'

Gem::Specification.new do |spec|
  spec.name          = "stalgo"
  spec.version       = Stalgo::VERSION
  spec.authors       = ["Edwin Santizo"]
  spec.email         = ["edwins10329@gmail.com"]
  spec.summary       = "Stalgo - A gem to get statistics for your rails app."
  spec.description   = "Utilizes some shell pipes to get awesome stuff."
  spec.homepage      = "http://www.reliablerents.com"
  spec.license       = "MIT"

  spec.files         = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  s.add_dependency "rails", "~> 4.1.5"

  # spec.add_development_dependency "bundler", "~> 1.6"
  # spec.add_development_dependency "rake"
end
