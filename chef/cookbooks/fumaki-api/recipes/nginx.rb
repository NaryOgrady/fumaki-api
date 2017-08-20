apt_package 'nginx'

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
