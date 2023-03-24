# -*- encoding: utf-8 -*-
# stub: serializer 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "serializer".freeze
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kevin Sylvestre".freeze]
  s.date = "2013-11-01"
  s.description = "Serializer is a Ruby on Rails tool for adding accessor to serialized attributes with support for types and defaults.".freeze
  s.email = ["kevin@ksylvest.com".freeze]
  s.homepage = "http://github.com/ksylvest/serializer".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.25".freeze
  s.summary = "A serialized attribute accessor gem with support for types and defaults".freeze

  s.installed_by_version = "3.3.25" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, ["> 3.0.0"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, ["> 3.0.0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
  end
end
