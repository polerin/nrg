# config valid only for current version of Capistrano
lock '3.4.0'

set :repo_url, 'git@github.com:mkunkel/nrg.git'

set :deploy_to, '/var/www/nashvillerollergirls.com'

set :stages, %w(production)
set :default_stage, 'production'
set :pty, true

after 'deploy', 'service:unicorn_nrg:restart'

# Clean up all older releases
after 'deploy:restart', 'deploy:cleanup'

# This is where the actual deployment with Unicorn happens.
namespace :deploy do
  desc 'Start the Unicorn process when it isn\'t already running.'
  task :start do
    on roles :all do
      execute 'sudo service unicorn_nrg start'
    end
  end

  desc 'Initiate a rolling restart by telling Unicorn to start the new application' \
       ' code and kill the old process when done.'
  task :restart do
  end

  desc 'Stop the application by killing the Unicorn process'
  task :stop do
    on roles :all do
      execute 'sudo service unicorn_nrg stop'
    end
  end
end
