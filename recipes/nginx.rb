#
# Cookbook:: crm2015
# Recipe:: nginx
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'nginx'

template '/etc/nginx/conf.d/crm2015.conf' do
  source 'nginx_crm2015.conf.erb'
end


template '/etc/nginx/nginx.conf' do
  source 'nginx.conf.erb'
end
