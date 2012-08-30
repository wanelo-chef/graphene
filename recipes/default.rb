#
# Cookbook Name:: graphene
# Recipe:: default
#
# Copyright 2012, Wanelo, Inc.
#
# All rights reserved - Do Not Redistribute
#

directory node['graphene']['apache']['document_root'] do
  owner node['apache']['user']
  group node['apache']['group']
end

template "#{node['apache']['dir']}/sites-available/graphene" do
  source "graphene-vhost.conf.erb"
  notifies :restart, resources(:service => "apache2")
end

apache_site "graphene" do
  notifies :restart, resources(:service => "apache2")
end

execute "git graphene" do
  command "#{node['graphene']['git_executable']} clone #{node['graphene']['git_repo']} ./"
  cwd node['graphene']['apache']['document_root']
  returns [ 0, 128 ]
end
