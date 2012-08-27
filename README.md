# Description

Installs and configures Graphene. Uses git to grab the latest version.

# Requirements
Platform:
  * Ubuntu 10.4

The following cookbooks are dependencies
  * Graphite, Apache2, Git

# Attributes
```ruby
node[:graphene][:host]
```
The name of any Apache VirtualHosts for this installation. Defaults to "graphene"

```ruby
node[:graphene][:host_aliases]
```
The names of any additional Apache ServerAliases for this installation. Defaults to nil

```ruby
node[:graphene][:apache][:document_root]
```
Location to install graphene files. Defaults to /opt/graphite/webapp/graphene

```ruby
node[:graphene][:apache][:port]
```
The installed Apache port. Defaults to 80.


# Usage
Simply include the recipe where you want Graphene installed
