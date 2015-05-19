execute "apt update" do
  command "apt-get update"
end

package "puppetmaster-passenger"

Chef::Log.info("***Installed puppet master***")
