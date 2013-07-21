#
# Cookbook Name:: php-dev
# Recipe:: default
#
# Copyright 2013, Domenico Solazzo
#
# All rights reserved - Do Not Redistribute
#

node.set["apache"]["user"]  = "vagrant"
node.set["apache"]["group"] = "vagrant"

node.set['mysql']['server_root_password'] = "root"
node.set['mysql']['server_debian_password'] = "root"
node.set['mysql']['server_repl_password'] = "root"

node.set['mysql']['bind_address'] = node[:app][:ip]
node.set['mysql']['allow_remote_root'] = "1";

include_recipe "apt"


# Register PHP 5.4 PPA repository
apt_repository "php54" do
  uri "http://ppa.launchpad.net/ondrej/php5/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "E5267A6C"
end
include_recipe "build-essential"
include_recipe "mysql::server"
include_recipe "mysql::client"
include_recipe 'php'
include_recipe "apache2"
include_recipe "apache2::mod_php5"
include_recipe "apache2::mod_rewrite"
include_recipe "apache2::mod_deflate"
include_recipe "apache2::mod_headers"

package "php5-mysql" do
      action :install
end

package "php5-mcrypt" do
      action :install
end

package "php5-curl" do
    action :install
end

package "php5-cli" do
    action :install
end 

package "php5-mhash" do
    action :install
end 

package "php5-gd" do
    action :install
end

directory node['vhost_root'] do
    mode 00755
    action :create
    recursive true
end

web_app "example-site" do
    server_name node['fqdn']
    server_aliases [node['fqdn'], node['hostname']]
    docroot node['vhost_root']
    template "default_site.conf.erb"
end
