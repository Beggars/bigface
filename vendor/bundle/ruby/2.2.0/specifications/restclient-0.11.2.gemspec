# -*- encoding: utf-8 -*-
# stub: restclient 0.11.2 ruby lib

Gem::Specification.new do |s|
  s.name = "restclient"
  s.version = "0.11.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Z.d. Peacock"]
  s.date = "2015-05-20"
  s.description = "A class and executable for interacting with RESTful web services"
  s.email = "zdp@thoomtech.com"
  s.executables = ["restclient"]
  s.files = ["bin/restclient"]
  s.homepage = "http://github.com/thoom/restclient"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Thoom RestClient: A simple REST consumer"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paint>, ["~> 1.0"])
    else
      s.add_dependency(%q<paint>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<paint>, ["~> 1.0"])
  end
end
