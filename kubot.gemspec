
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kubot/version'

Gem::Specification.new do |spec|
  spec.name          = 'kubot'
  spec.version       = Kubot::VERSION
  spec.authors       = ['Louis Bellet']
  spec.email         = ['lbellet@heliostech.fr']

  spec.summary       = %q{Rubykube Slack bot}
  spec.description   = %q{Our rubykube slack bot facilitate our work}
  spec.homepage      = 'https://www.rubykube.io'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'clamp', '~> 1.2'
  spec.add_dependency 'slack-ruby-bot', '~> 0.11'
  spec.add_dependency 'celluloid-io', '~> 0.17'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
