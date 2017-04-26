#
# Cookbook:: crm2015
# Recipe:: utils
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'nano'
template '/root/.nanorc' do
  source 'nanorc.erb'
end

package 'zip'
package 'htop'
package 'rsync'
package 'git'
package 'composer'
package 'mariadb'
package 'supervisor'
package 'tar' 
package 'bzip2'

execute "install-nodejs" do
  command 'curl --silent --location https://rpm.nodesource.com/setup_6.x | bash - | yum -y install nodejs'
  not_if 'rpm -q nodejs'
end

execute 'install-bower' do
  command 'npm install -g bower'
  not_if "npm list -g bower"
end

package 'ghostscript'

