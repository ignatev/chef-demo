#
# Cookbook:: petclinic
# Recipe:: mysql
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if tagged?('db')
  docker_service 'default' do
    action [:create, :start]
  end

  docker_image 'postgres' do
    action :pull
  end

  docker_container 'flask-db' do
    repo 'postgres'
    port '5432:5432'
    env ['POSTGRES_PASSWORD=password', 'POSTGRES_USER=postgres', 'POSTGRES_DB=mydb']
  end
  # mysql_service "flask-db" do
  #   version '5.7'
  #   initial_root_password 'supersecure'
  #   action [:create, :start]
  # end

#   mysql_connection_info = {
#     host: '127.0.0.1',
#     username: 'root',
#     password: 'change me',
#   }

# # Create the database instance.
#   mysql_database 'chef-demo-db' do
#     connection mysql_connection_info
#     action :create
#   end

# # Add a database user.
#   mysql_database_user 'root' do
#     connection mysql_connection_info
#     password 'change me'
#     database_name 'chef-demo-db'
#     host '127.0.0.1'
#     action [:create, :grant]
#   end
end