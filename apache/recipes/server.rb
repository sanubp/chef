#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'apache2' do
	action :install
end

file '/var/www/html/index.html' do
	content '<h1> hello from apache cookbook'
end

service 'apache2' do
	action [ :enable, :start]
end
