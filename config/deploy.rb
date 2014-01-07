set :app_title, 'SSH_test'
set :repo_url, 'git@github.com:hab278/SSH_test.git'
set :repository,  "git@github.com:hab278/SSH_test.git"
set :keep_releases, 1
set :branch, "master"
set :recipient, "hab278@nyu.edu"
set :tagging_environments, ["staging", "production"]
set :log_level, :debug
set :rvm_custom_path, "~/.rvm"
set :rvm_ruby_version , "1.9.3"

set :check_app, ENV["CHECK_APP"]
set :app_url, ENV["APP_URL"]
set :app_shutdown_command, ENV["SHUTDOWN_APP_COMMAND"]
set :app_startup_command, ENV["STARTUP_APP_COMMAND"]
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

fetch(:app_settings)[:servers].each do |srvr| 
  server srvr, user: fetch(:user), roles: %w{all}
end