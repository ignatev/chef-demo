#
# Cookbook:: petclinic
# Recipe:: mysql
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if tagged?('db')
  docker_image 'postgres' do
    action :pull
  end

  docker_container 'java-app-db' do
    repo 'postgres'
    port '5432:5432'
    env ['POSTGRES_PASSWORD=password', 'POSTGRES_USER=postgres', 'POSTGRES_DB=mydb']
  end
end