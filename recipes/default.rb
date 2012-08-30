#
# Cookbook Name:: graphene
# Recipe:: default
#
# Copyright 2012, Wanelo.com
#
# All rights reserved - Do Not Redistribute
#

user  = node['apache']['user']
group = node['apache']['group']


directory node['graphene']['apache']['document_root'] do
  owner user
  group group
end

git node['graphene']['apache']['document_root'] do
  repository  node['graphene']['git_repo']
  user        user
  group       group
end

template "#{node['apache']['dir']}/sites-available/graphene" do
  source "graphene-vhost.conf.erb"
  notifies :restart, resources(:service => "apache2")
end

apache_site "graphene" do
  notifies :restart, resources(:service => "apache2")
end


