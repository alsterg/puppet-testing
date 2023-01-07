# The hiera_include function requests a list of class names from Hiera, then declares all of them.
# Because hiera_include uses the array lookup type, it gets a combined list that includes classes 
# from every level of the hierarchy. This allows you to abandon node definitions and use Hiera like 
# a lightweight external node classifier.
hiera_include('classes')
# I think the above is equivalent to:
# lookup('classes', {merge => unique}).include

###################################################################################################
## Alternatively of using Hiera, you can use Puppet's native "Node Definition" mechanism
## https://www.puppet.com/docs/puppet/7/lang_node_definitions.html

# This file (./manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
# https://puppet.com/docs/puppet/latest/dirs_manifest.html
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition if you want to use it.

## Active Configurations ##

# Disable filebucket by default for all File resources:
# https://github.com/puppetlabs/docs-archive/blob/master/pe/2015.3/release_notes.markdown#filebucket-resource-no-longer-created-by-default
#File { backup => false }

## Node Definitions ##

# The default node definition matches any node lacking a more specific node
# definition. If there are no other node definitions in this file, classes
# and resources declared in the default node definition will be included in
# every node's catalog.
#
# Note that node definitions in this file are merged with node data from the
# Puppet Enterprise console and External Node Classifiers (ENC's) (if enabled).
#
# For more on node definitions, see: https://puppet.com/docs/puppet/latest/lang_node_definitions.html
#node default {  # Can be a specific node name; or a regular expression that match on node names. Or list of these.
  # Any mixture of class declarations, variables, resource declarations, collectors, conditional statements, chaining relationships, and functions.
  # NOTE: Although node definitions can contain almost any Puppet code, we recommend that you use them only to set variables and declare classes. Avoid putting resource declarations, collectors, conditional statements, chaining relationships, and functions in node definitions; all of these belong in classes or defined types.
  # Example:
  #   class { 'my_class': }
  #include common
#}

#node 'agent' { 
#   package { ['SSL'] : 
#      ensure => latest 
#   } 
#} 

# It can also inherit:
#node 'brcleprod004.brcl.com' inherits 'brcleloacl003.brcl.com' { ... }
