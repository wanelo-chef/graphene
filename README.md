# Description

Installs and configures the Graphene graphing toolkit. 

# Requirements
Platform:
  * Ubuntu 10.04, 12.04

The following cookbooks are dependencies
  * Graphite, Apache2

# Attributes
```
node['graphene']['apache']['host'], required: false
```
The Apache VirtualHost for this installation. Defaults to `graphene`

```
node['graphene']['apache']['host_aliases'], required: false
```
The names of additional Apache ServerAliases. Defaults to `nil`

```
node['graphene']['apache']['document_root'], required: false
```
Location to install graphene files. Defaults to `/opt/graphite/webapp/graphene`

```
node['graphene']['apache']['port'], required: false
```
The installed Apache port. Defaults to `80`


# Usage
Simply include the recipe where you want Graphene installed
