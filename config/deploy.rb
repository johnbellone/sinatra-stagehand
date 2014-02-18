# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'stagehand'
set :repo_url, 'https://github.com/johnbellone/sinatra-stagehand'
set :deploy_to, '/srv/stagehand'

set :chruby_ruby, 'ruby-2.0.0-p353'

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log .env tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do
  after :publishing, 'puma:smart-restart'
end
