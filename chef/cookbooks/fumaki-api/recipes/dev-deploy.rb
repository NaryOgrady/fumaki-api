template '/etc/systemd/system/fumaki.service' do
  source 'fumaki-dev.service.erb'
  owner 'root'
  group 'www-data'
  mode '0755'
end

service 'fumaki' do
  action :start
end

