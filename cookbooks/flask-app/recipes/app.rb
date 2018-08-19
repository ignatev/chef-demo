if tagged?('app')
  docker_service 'default' do
    action [:create, :start]
  end

  docker_image 'ignatev/flask-app' do
    action :pull
  end

  docker_container 'flask-app' do
    repo 'ignatev/flask-app'
    port '80:80'
  end

end
