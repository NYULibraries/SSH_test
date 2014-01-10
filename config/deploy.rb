set :app_title, 'SSH_test'
set :repo_url, 'git@github.com:hab278/SSH_test.git'
set :keep_releases, 1
set :branch, "master"
set :log_level, :debug
set :rvm_custom_path, "~/.rvm"
set :rvm_ruby_version , "1.9.3"

set :check_app,     ENV["CHECK_APP"]
set :app_url,       ENV["APP_URL"]
set :scm_username,  ENV["SCM_USERNAME"]
set :app_path,      ENV["DEPLOY_PATH"]
set :user,          ENV["USER"]
set(:deploy_to,     ->  {"#{fetch :app_path}#{fetch :application}"} )

[ENV["SERVER"]].each do |srvr| 
  server srvr, user: fetch(:user), roles: %w{all}
end


SSHKit.config.command_map[:apache] = ENV["APACHE"]
