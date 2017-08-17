apt_update 'daily' do
    frequency 86400
    action :periodic
end

include_recipe 'flask-app::configure'