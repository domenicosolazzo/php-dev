#
# Cookbook Name:: php-dev
# Recipe:: default
#
# Copyright 2013, Domenico Solazzo
#
# All rights reserved - Do Not Redistribute
#
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