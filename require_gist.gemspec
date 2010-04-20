# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{require_gist}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evgeniy Dolzhenko"]
  s.date = %q{2010-04-20}
  s.email = %q{dolzenko@gmail.com}
  s.files = ["lib/require_gist.rb", "require_gist.gemspec", "spec/require_gist_spec.rb", "spec/require_gist_test_gist.rb", "thirdparty/require_gist.user.js"]
  s.homepage = %q{http://github.com/dolzenko/require_gist}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Require code directly from GitHub's Gists}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
