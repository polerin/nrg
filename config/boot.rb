ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

require 'dotenv'
Dotenv.tap do |de|
  de.load
  de.load(ENV['RAILS_ENV']) if ENV['RAILS_ENV']
end
