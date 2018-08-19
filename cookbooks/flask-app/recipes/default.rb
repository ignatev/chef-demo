#
# Cookbook:: petclinic
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute "update-upgrade" do
  command "sudo apt-get update && sudo apt-get upgrade -y"
  action :run
end

include_recipe 'flask-app::db'
include_recipe 'flask-app::app'