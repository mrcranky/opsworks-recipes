include_recipe "apt"

package "puppetmaster-passenger"

remote_directory "/etc/puppet" do
  path "/etc/puppet"
  source "puppet"
  recursive true
  action :create
end

Chef::Log.info("***Installed puppet master***")
