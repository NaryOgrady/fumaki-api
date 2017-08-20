apt_update 'daily' do
  frequency 86400
  action :periodic
end

apt_package 'build-essential' do
  action :install
end
