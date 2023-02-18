server '207.154.209.189', user: "#{fetch(:user)}", roles: %w{app db web}, primary: true

set :application, 'upload_site'
set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

set :environment, 'production'
set :rails_env,   'production'

set :nginx_server_name, '207.154.209.189'
set :puma_conf, "#{shared_path}/config/puma.rb"