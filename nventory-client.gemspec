# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nventory-client/version"

Gem::Specification.new do |s|
  s.name          = "nventory-client"
  s.version       = Nventory::Client::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Darren Dao", "John Tran", "Jason Heiss", "Marjorie"]
  s.email         = ["nventory-users@lists.sourceforge.net"]
  s.homepage      = "http://nventory.sourceforge.net"
  s.summary       = "Client for nVentory"
  s.description   = "The client provides a command line tool and library for interacting with an nVentory database-- you can register nodes, retrieve information, or set values for your assets."

  s.rubyforge_project = "nventory-client"

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_runtime_dependency("facter")
end

