#
# Cookbook Name:: webserver-cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

log node.aws

package 'epel-release'
rpm_package 'webtactic' do 
	source 'https://mirror.webtatic.com/yum/el7/webtatic-release.rpm'
end 
package 'nginx'
package 'php70w'
package 'php70w-opcache'
package 'php70w-mysql'
package 'mariadb'
package 'mariadb-libs'
