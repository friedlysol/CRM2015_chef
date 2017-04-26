#
# Cookbook:: crm2015
# Recipe:: php70
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Add repos
yum_repository 'remi' do
  mirrorlist 'http://rpms.remirepo.net/enterprise/7/remi/mirror'
  description "Remi's RPM repository for Enterprise Linux 7 - $basearch"
  enabled true
  gpgcheck true
  gpgkey 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
end

yum_repository 'remi-php71' do
  mirrorlist 'http://rpms.remirepo.net/enterprise/7/php71/mirror'
  description "Remi's PHP 7.1 RPM repository for Enterprise Linux 7 - $basearch"
  enabled true
  gpgcheck true
  gpgkey 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
end

#execute "add-libsasl2-link" do
#  command "ln -s /usr/lib64/libsasl2.so.3.0.0 /usr/lib64/libsasl2.so.2"
#  ignore_failure true
#  not_if { ::File.exist?('/usr/lib64/libsasl2.so.2') }
#end

# Install memcached first
package 'memcached'

# Install php packages
package 'php-fpm'
package 'php-common'
package 'php-opcache'
package 'php-cli'
package 'php-bcmath'
package 'php-pear'
package 'php-pdo'
package 'php-mysqlnd'
package 'php-mssql'
package 'php-pecl-memcached'
package 'php-pecl-zip'
package 'php-gd'
package 'php-mbstring'
package 'php-mcrypt'
package 'php-xml'
package 'php-json'
package 'php-intl'
package 'php-soap'