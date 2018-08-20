execute "update-upgrade" do
  command "sudo apt-get update && sudo apt-get upgrade -y"
  action :run
end

docker_service 'default' do
  action [:create, :start]
end

include_recipe 'java-app::db'
include_recipe 'java-app::app'