apt_package 'python3'
apt_package 'python3-dev'
apt_package 'python3-pip'

execute 'pip install' do
  command 'pip3 install -r /vagrant/src/requirements.txt'
end

template '/etc/systemd/system/fumaki.service' do
  source 'fumaki.service.erb'
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
