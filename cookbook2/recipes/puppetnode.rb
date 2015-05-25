Chef::Log.info("***About to install puppet node***")

directory 'C:\tmp' do
  rights :full_control, 'Everyone'
  recursive true
  action :create
end

cookbook_file 'C:\tmp\git-1.9.5-preview20150319.exe' do
  source "git-1.9.5-preview20150319.exe"
  rights :full_control, 'Everyone'
  action :create
end

windows_package 'Git' do
  source 'c:\tmp\git-1.9.5-preview20150319.exe'
  action :install
end

powershell_script 'Download Puppet Installer' do
  code 'Invoke-WebRequest https://downloads.puppetlabs.com/windows/puppet-3.7.5-x64.msi -OutFile c:\tmp\puppet-3.7.5-x64.msi'
  not_if 'Test-Path c:\tmp\puppet-3.7.5-x64.msi'
end

windows_package 'Puppet' do
  source 'c:\tmp\puppet-3.7.5-x64.msi'
  action :install
end
