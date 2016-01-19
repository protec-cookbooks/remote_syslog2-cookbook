#
# Cookbook Name:: remote_syslog2
# Recipe:: default
#
# Copyright (C) 2014 Jeff Way
#
# All rights reserved - Do Not Redistribute
#

# uninstall remote_syslog gem
gem_package "remote_syslog" do
  action :remove
end

apt_package "rsyslog" do
  action :remove
end

include_recipe 'remote_syslog2::install'
include_recipe 'remote_syslog2::configure'
include_recipe 'remote_syslog2::service'