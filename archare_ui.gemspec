# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'archare_ui/version'

Gem::Specification.new do |spec|
  spec.name          = "archare_ui"
  spec.version       = ArchareUI::VERSION
  spec.authors       = ["xhanshawn"]
  spec.email         = ["xhan610@gmail.com"]

  spec.summary       = %q{Archare UI framework}
  spec.description   = %q{This is the gem for the UI framework of Archare. It contains a navigation component.}
  spec.homepage      = "http://archare.elasticbeanstalk.com"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://archare.elasticbeanstalk.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "bootstrap-sass", "~> 3.3.6"
end