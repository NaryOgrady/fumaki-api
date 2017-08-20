apt_update 'daily' do
    frequency 86400
    action :periodic
end

apt_package 'build-essential' do
  action :install
end

apt_package 'nginx' do
  action :install
end

include_recipe 'flask-app::configure'
include_recipe 'flask-app::deploy'
