# Description

Installs and configures the Graphene graphing toolkit. 

# Requirements
Platform:
  * Ubuntu 10.04, 12.04

The following cookbooks are dependencies
  * Graphite, Apache2, Git

# Attributes
```ruby
node[:graphene][:host], required: false
```
The name of any Apache VirtualHosts for this installation. Defaults to `graphene`

```ruby
node[:graphene][:host_aliases], required: false
```
The names of any additional Apache ServerAliases for this installation. Defaults to `nil`

```ruby
node[:graphene][:apache][:document_root], required: false
```
Location to install graphene files. Defaults to `/opt/graphite/webapp/graphene`

```ruby
node[:graphene][:apache][:port], required: false
```
The installed Apache port. Defaults to `80`


# Usage
Simply include the recipe where you want Graphene installed
