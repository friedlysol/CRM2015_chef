#
# Cookbook:: crm2015
# Recipe:: startServices
#
# Copyright:: 2017, The Authors, All Rights Reserved.

service 'nginx' do
  action [:enable, :restart]
end
 
service 'php-fpm' do
  action [:enable, :restart]
end

service 'supervisord' do
  action [:enable, :restart]
end