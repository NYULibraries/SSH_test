SSH Test
========

SSH Test is a dummy app used to test Jenkins ability to SSH to various servers as well as nyulibraries-deploy's abilities to do a rails-less deploy.

The only command it knows is `bundle exec cap deploy`. Even so, it needs certain environment variables set.

* USER = The user to SSH as.
* DEPLOY_PATH = Path to deploy in.
* SCM_USERNAME = SCM username (GitHub)
* SERVER = Array of servers to test.

Everything else is defaulted by [nyulibraries-deploy](https://github.com/NYULibraries/nyulibraries_deploy/blob/master/lib/nyulibraries/deploy/capistrano/default_attributes.rb).