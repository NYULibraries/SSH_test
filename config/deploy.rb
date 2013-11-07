require 'nyulibraries/deploy/capistrano/default_attributes'
require 'nyulibraries/deploy/capistrano/multistage'
require 'nyulibraries/deploy/capistrano/rails_config'
require 'nyulibraries/deploy/capistrano/bundler'
require 'nyulibraries/deploy/capistrano/rvm'
set :application, "SSH_test"
set :repository,  "git@github.com:hab278/SSH_test.git"
set :keep_releases, 1