python_runtime '3'

pip_requirements '/vagrant/src/requirements.txt'

template '/etc/systemd/system/fumaki.service' do
  source 'fumaki.service.erb'
  owner 'root'
  group 'www-data'
  mode '0755'
  action :create
end

template '/etc/nginx/sites-available/fumaki' do
  source 'sites-available-fumaki.erb'
  owner 'root'
  group 'www-data'
  mode '0755'
  action :create
end

link '/etc/nginx/sites-enabled/fumaki' do
  to '/etc/nginx/sites-available/fumaki'
  link_type :symbolic
end

directory '/var/run/uwsgi' do
  owner 'root'
  group 'www-data'
  mode '0777'
  action :create
end


