# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-form_friendly_integer}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["roovo"]
  s.date = %q{2009-04-19}
  s.description = %q{A DataMapper Integer type which behaves well on forms}
  s.email = %q{roovo@roovoweb.com}
  s.extra_rdoc_files = ["CHANGELOG", "lib/dm-form_friendly_integer.rb", "lib/dm-types/form_friendly_integer.rb", "LICENSE", "README.rdoc", "tasks/spec.rake"]
  s.files = ["autotest/discover.rb", "CHANGELOG", "lib/dm-form_friendly_integer.rb", "lib/dm-types/form_friendly_integer.rb", "LICENSE", "Manifest", "Rakefile", "README.rdoc", "spec/integration/form_friendly_integer_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/spec.rake", "dm-form_friendly_integer.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/roovo/dm-form_friendly_integer}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Dm-form_friendly_integer", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dm-form_friendly_integer}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{A DataMapper Integer type which behaves well on forms}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dm-core>, [">= 0"])
    else
      s.add_dependency(%q<dm-core>, [">= 0"])
    end
  else
    s.add_dependency(%q<dm-core>, [">= 0"])
  end
end
