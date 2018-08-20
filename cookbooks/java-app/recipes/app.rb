
docker_service 'default' do
  action [:create, :start]
end

if tagged?('app')
  docker_image 'ignatev/java-app' do
    action :pull
  end

  docker_container 'java-app' do
    repo 'ignatev/java-app'
    port '8080:8080'
    extra_hosts ['mypostgres:10.127.0.2']
  end

end

dbnodes = search(:node, "*:*")
dbnodes.each do |node|
  Chef::Log.info("#{node["name"]} has IP address #{node["ipaddress"]}")
end