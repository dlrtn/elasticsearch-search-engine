# -*- encoding: utf-8 -*-
# stub: logstash-mixin-ecs_compatibility_support 1.0.0 java lib

Gem::Specification.new do |s|
  s.name = "logstash-mixin-ecs_compatibility_support".freeze
  s.version = "1.0.0"
  s.platform = "java".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Elastic".freeze]
  s.date = "2020-07-09"
  s.description = "This gem is meant to be a dependency of any Logstash plugin that wishes to use the ECS-Compatibility mode introduced in Logstash 7.x while maintaining backward-compatibility with earlier Logstash releases. When used on older Logstash versions, this adapter provides an implementation of ECS-Compatibility mode that can be controlled at the plugin instance level.".freeze
  s.email = "info@elastic.co".freeze
  s.homepage = "https://github.com/logstash-plugins/logstash-mixin-ecs_compatibility_support".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Support for the ECS-Compatibility mode introduced in Logstash 7.x, for plugins wishing to use this API on older Logstashes".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<logstash-core>.freeze, [">= 5.0.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
      s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<logstash-codec-plain>.freeze, [">= 0"])
    else
      s.add_dependency(%q<logstash-core>.freeze, [">= 5.0.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
      s.add_dependency(%q<rspec-its>.freeze, ["~> 1.3"])
      s.add_dependency(%q<logstash-codec-plain>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<logstash-core>.freeze, [">= 5.0.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.3"])
    s.add_dependency(%q<logstash-codec-plain>.freeze, [">= 0"])
  end
end
