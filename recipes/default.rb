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

include_recipe "apache2"

include_recipe "build-essential"
include_recipe "xml"
include_recipe "php"
include_recipe "phpunit"
include_recipe "chef-composer"
include_recipe "xdebug"