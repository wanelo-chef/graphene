#
# Cookbook Name:: graphene
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory node[:graphene][:apache][:document_root] do
  owner node['apache']['user']
  group node['apache']['group']
end

template "/etc/apache2/sites-available/graphene" do
  source "graphene-vhost.conf.erb"
  notifies :restart, resources(:service => "apache2")
end

apache_site "graphene" do
  notifies :restart, resources(:service => "apache2")
end

execute "git graphene" do
  command "git clone git://github.com/jondot/graphene.git ./"
  cwd node[:graphene][:apache][:document_root]
end