#
# Cookbook:: crm2015
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'epel-release'

include_recipe 'crm2015::nginx'
include_recipe 'crm2015::php70'
include_recipe 'crm2015::utils'
include_recipe 'crm2015::startServices'

