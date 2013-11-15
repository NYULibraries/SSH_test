require 'nyulibraries/deploy/capistrano/default_attributes'
require 'nyulibraries/deploy/capistrano/rails_config'
require 'nyulibraries/deploy/capistrano/bundler'
require 'nyulibraries/deploy/capistrano/rvm'

set :application, 'SSH_test'
set :repo_url, 'git@github.com:hab278/SSH_test.git'
set :repository,  "git@github.com:hab278/SSH_test.git"
set :keep_releases, 1
set :branch, "master"

# namespace :rails_config do
#   task :set_variables do
    set :app_settings, {
      :user => ENV["USER"],
      :path => ENV["DEPLOY_PATH"],
      :scm_username => ENV["SCM_USERNAME"],
      :servers => [ENV["SERVER"]]
    }
    set(:scm_username,  ->  { fetch(:app_settings)[:scm_username] } )
    set(:app_path,      ->  { fetch(:app_settings)[:path] } )
    set(:user,          ->  { fetch(:app_settings)[:user] } )
    set(:puma_ports,    ->  { fetch(:app_settings)[:puma_ports] } )
    set(:deploy_to,     ->  {"#{fetch :app_path}#{fetch :application}"} )
    server fetch(:app_settings)[:servers], user: fetch(:user), roles: %w{web app}
#   end
# end

namespace :deploy do
  task :migrate do
    logger.info "Do nothing in this railsless deploy."
  end
end
