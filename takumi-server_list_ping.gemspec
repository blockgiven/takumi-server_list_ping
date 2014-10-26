# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'takumi/server_list_ping/version'

Gem::Specification.new do |spec|
  spec.name          = "takumi-server_list_ping"
  spec.version       = Takumi::ServerListPing::VERSION
  spec.authors       = ["block_given?"]
  spec.email         = ["block_given@outlook.com"]
  spec.summary       = %q{minecraft server list ping packet and tools.}
  spec.homepage      = "https://github.com/blockgiven/takumi-server_list_ping"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.executables << 'takumi-server_list_ping'

  spec.add_runtime_dependency "takumi-packet"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
