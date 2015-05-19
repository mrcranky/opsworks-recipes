include_recipe "apt"

package "puppetmaster-passenger"

Chef::Log.info("***Installed puppet master***")
