# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |gem|
  gem.name          = "eulers_day_off"
  gem.version       = EulersDayOff::VERSION
  gem.authors       = ["Eric Koslow"]
  gem.email         = ["ekoslow+eulersdayoff@gmail.com"]
  gem.description   = %q{Scores Euler's Day Off boards}
  gem.summary       = %q{Scores Euler's Day Off boards}
  gem.homepage      = "https://github.com/ekosz/eulers_day_off"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
