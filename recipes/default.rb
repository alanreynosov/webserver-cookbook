#
# Cookbook Name:: webserver-cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'epel-release'
rpm_package 'webtactic' do 
	source 'https://mirror.webtatic.com/yum/el7/webtatic-release.rpm'
end 
yum_package 'nginx' do
	ignore_failure true
end
package 'php70w'
package 'php70w-opcache'
package 'php70w-mysql'
package 'mariadb'
package 'mariadb-libs'
