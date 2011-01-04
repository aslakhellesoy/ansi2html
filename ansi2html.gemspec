# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'ansi2html'
  s.version     = '5.3.2'
  s.authors     = ["Aslak Hellesøy"]
  s.description = 'Convert ANSI escape sequences to styleable HTML markup'
  s.summary     = "#{s.name}-#{s.version}"
  s.email       = 'aslak.hellesoy@gmail.com'
  s.homepage    = 'http://github.com/aslakhellesoy/#{s.name}'

  s.add_development_dependency 'rspec', '~> 2.3.0'

  s.rubygems_version   = "1.3.7"
  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.extra_rdoc_files = ["COPYING", "README.rdoc", "History.txt"]
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"
end

