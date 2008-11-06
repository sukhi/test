set :application, "test"
set :repository,  "git@github.com:sukhi/test.git"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
 set :deploy_to, "/var/www/apps/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
 set :scm, "git"
set :branch, "master"

default_run_options[:pty] = true
set :ssh_options, { :forward_agent => true }
set :user, "deploy"

role :app, "wimbledon"
role :web, "wimbledon"
role :db,  "wimbledon", :primary => true
