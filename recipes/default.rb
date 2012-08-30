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

git node['graphene']['apache']['document_root'] do
  repository  node['graphene']['git_repo']
  destination node['graphene']['apache']['document_root']
end

