#
# Cookbook Name:: php-dev
# Recipe:: default
#
# Copyright 2013, Domenico Solazzo
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"

include_recipe "apache2"

include_recipe "php"
include_recipe "chef-phpunit"
include_recipe "composer"
include_recipe "xdebug"