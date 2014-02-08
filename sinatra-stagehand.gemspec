lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)
require 'stagehand/version'

Gem::Specification.new do |spec|
  spec.name          = 'sinatra-stagehand'
  spec.version       = Stagehand::VERSION
  spec.authors       = ['John Bellone']
  spec.email         = ['john.bellone.jr@gmail.com']
  spec.description   = %q{Sinatra with Bootstrap, Bower, jQuery, Haml, LESS and Sprockets!}
  spec.summary       = IO.read(File.join(File.dirname(__FILE__), 'README.md'))
  spec.homepage      = 'https://github.com/johnbellone/sinatra-stagehand'
  spec.license       = 'MIT'
  spec.cert_chain    = ['certs/jbellone.pem']
  spec.signing_key   = File.join(Dir.home, '.config/gem-private_key.pem') if $0 =~ /gem\z/

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'coffee-script', '~> 2.2'
  spec.add_dependency 'dotenv', '~> 0.9'
  spec.add_dependency 'haml', '~> 4.0'
  spec.add_dependency 'less', '~> 2.3'
  spec.add_dependency 'sinatra', '~> 1.3'
  spec.add_dependency 'sinatra-asset-pipeline', '~> 0.3'
end
