if tagged?('app')
  docker_image 'ignatev/java-app' do
    action :pull
  end

  docker_container 'java-app' do
    dbnodes = search(:node, 'roles:db')
    dbnode_ip = dbnodes[0]['ipaddress']
    extra_hosts ["mypostgres:#{dbnode_ip}"]

    repo 'ignatev/java-app'
    port '8080:8080'
  end

end