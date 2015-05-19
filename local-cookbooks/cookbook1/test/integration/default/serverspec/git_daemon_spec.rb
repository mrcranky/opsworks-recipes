require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "Puppet Daemon" do

  it "is listening on port 8140" do
    expect(port(8140)).to be_listening
  end

  it "has a running service of apache2" do
    expect(service("apache2")).to be_running
  end

end

