# -*- encoding: utf-8 -*-
require File.expand_path("../lib/prologue/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "prologue"
  s.version     = Prologue::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Quick Left"]
  s.email       = ["info@quickleft.com"]
  s.homepage    = "http://github.com/quickleft/prologue"
  s.summary     = "prologue-#{s.version}"
  s.description = "Generate a Rails 3 app with application templates Quick Left uses to start their projects off right!"

  s.rubyforge_project         = "prologue"
  s.required_rubygems_version = "~> 1.8.5"

  # Runtime Dependencies
  s.add_dependency "rails"         , "~> #{Prologue::DEFAULT_RAILS_VERSION}"
  s.add_dependency "thor"          , "~> 0.14.6"
  s.add_dependency "bundler"       , "~> 1.0.15"

  # Development Dependencies
  s.add_development_dependency "aruba"    , "~> 0.4.3"
  s.add_development_dependency "cucumber" , "~> 1.0.0"
  s.add_development_dependency "rspec"    , "~> 2.6.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = "lib"
end

