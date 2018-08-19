#
# Cookbook:: petclinic
# Recipe:: mysql
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if tagged?('db')
  mysql_service 'foo' do
    port '3306'
    version '5.7'
    initial_root_password 'change me'
    action [:create, :start]
  end

  mysql_connection_info = {
    host: '127.0.0.1',
    username: 'root',
    password: 'change me',
  }

# Create the database instance.
  mysql_database 'chef-demo-db' do
    connection mysql_connection_info
    action :create
  end

# Add a database user.
  mysql_database_user 'root' do
    connection mysql_connection_info
    password 'change me'
    database_name 'chef-demo-db'
    host '127.0.0.1'
    action [:create, :grant]
  end
end