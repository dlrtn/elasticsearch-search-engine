# -*- encoding: utf-8 -*-
# stub: elastic-app-search 7.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "elastic-app-search".freeze
  s.version = "7.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Quin Hoxie".freeze]
  s.date = "2020-06-29"
  s.description = "API client for accessing the Elastic App Search API with no dependencies.".freeze
  s.email = ["support@elastic.co".freeze]
  s.homepage = "https://github.com/elastic/app-search-ruby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Official gem for accessing the Elastic App Search API".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<awesome_print>.freeze, ["~> 1.8"])
      s.add_development_dependency(%q<pry>.freeze, ["~> 0.11.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.3"])
      s.add_runtime_dependency(%q<jwt>.freeze, [">= 1.5", "< 3.0"])
    else
      s.add_dependency(%q<awesome_print>.freeze, ["~> 1.8"])
      s.add_dependency(%q<pry>.freeze, ["~> 0.11.3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.3"])
      s.add_dependency(%q<jwt>.freeze, [">= 1.5", "< 3.0"])
    end
  else
    s.add_dependency(%q<awesome_print>.freeze, ["~> 1.8"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.11.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.3"])
    s.add_dependency(%q<jwt>.freeze, [">= 1.5", "< 3.0"])
  end
end
