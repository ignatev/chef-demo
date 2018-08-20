# # encoding: utf-8

# Inspec test for recipe petclinic::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe 'java-app running' do

  it 'should respond to an HTTP request' do
    expect(command 'curl 35.225.212.140:8080').to return_stdout /.*[{"id":1,"name":"A"},{"id":2,"name":"B"},{"id":3,"name":"C"}].*/
  end

end