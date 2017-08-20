apt_package 'python3'
apt_package 'python3-dev'
apt_package 'python3-pip'

execute 'pip install' do
  command 'pip3 install -r /vagrant/src/requirements.txt'
end
