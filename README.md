Description
===========
Installs and configures Graphene

Requirements
============
Platform:
  * Ubuntu 10.4

The following cookbooks are dependencies
  * Graphite, Apache2, Git

Attributes
==========
  * node[:graphene][:host] - name of Apache VirtualHost. Defaults to "graphene"
  * node[:graphene][:host_aliases] - any additional ServerAliases? Defaults to nil
  * node[:graphene][:apache][:document_root] - Location to install graphene files. Defaults to /opt/graphite/webapp/graphene
  * node[:graphene][:apache][:port] - port of said Apache. Defaults to 80.

Usage
=====
Simply include the recipe where you want Graphene installed
