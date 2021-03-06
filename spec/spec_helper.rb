require 'simplecov'
require 'simplecov-console'

ENV['RACK_ENV'] ||= 'test'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

require './app.rb'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara/rspec'
require 'rspec'
require './spec/features/web_helper.rb'
require 'database_cleaner'

Capybara.app = Chitter
