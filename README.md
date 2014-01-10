SSH Test
========

SSH Test is a dummy app used to test Jenkins ability to SSH to various servers using SSHKit and Capistrano.

There are a couple of useful commands. Even so, it needs certain environment variables set.

* USER 			- The user to SSH as.
* DEPLOY_PATH 	- Path to deploy in.
* SCM_USERNAME 	- SCM username (GitHub)
* SERVER 		- Array of servers to test.
* CHECK_APP 	- Name of the app process
* APP_URL 		- A url to do a quick and dirty check on to see if its still alive.

# Commands
Helpful commands exist :monkey: :wrench: 
```
bundle exec cap apache:shutdown                # Shuts down apache
bundle exec cap apache:startup                 # Starts up apache
bundle exec cap apache:status                  # Checks apache's running status
bundle exec cap check:app_running              # Check that the app process is running
bundle exec cap check:app_sanity               # Check that the app is running
bundle exec cap check:rvm                      # Check that we have RVM installed
bundle exec cap check:write_permissions        # Check that we can access everything
```
