template '/etc/systemd/system/fumaki.service' do
  source 'fumaki-prod.service.erb'
  owner 'root'
  group 'www-data'
  mode '0755'
end

directory '/var/run/uwsgi' do
  owner 'root'
  group 'www-data'
  mode '0777'
  action :create
end
service 'fumaki' do
  action :start
end

service 'nginx' do
  action :restart
end
