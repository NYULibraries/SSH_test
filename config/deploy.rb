set :app_title, 'SSH_test'
set :repo_url, 'git@github.com:hab278/SSH_test.git'
set :keep_releases, 1
set :branch, "master"
set :log_level, :debug

SSHKit.config.command_map[:apache]  = ENV.fetch("APACHE", "httpd")
set :rvm_custom_path,                 ENV.fetch("RVM_PATH", "~/.rvm")
set :rvm_ruby_version,                ENV.fetch("RUBY_VER", "1.9.3")

set :check_app,     ENV.fetch("CHECK_APP", "")
set :legacy,        ENV.fetch("LEGACY", false)
set :app_url,       ENV.fetch("APP_URL", "")
set :scm_username,  ENV.fetch("SCM_USERNAME", "")
set :app_path,      ENV.fetch("DEPLOY_PATH", "")
set :user,          ENV.fetch("USER", "")
set(:deploy_to,     ->  {"#{fetch :app_path}#{fetch :application}"} )

[ENV.fetch("SERVER", "")].each do |srvr| 
  server srvr, user: fetch(:user), roles: %w{all}
end
