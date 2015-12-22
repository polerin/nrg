require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

desc 'Run rubocop'
task :rubocop do
  exit RuboCop::CLI.new.run(%w(--rails))
end

task default: []

begin
  require 'rubocop'
  Rake::Task[:default].clear
  task default: [:spec, :rubocop]
rescue LoadError
  STDOUT.print 'Skipping rubocop and rspec loading'
end
