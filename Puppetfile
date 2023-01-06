# specifies which server that Forge based modules are fetched from.
forge 'forge.puppetlabs.com'
# r10k can install Puppet modules from a number of different sources. Right now modules can be installed from the Puppet Forge, Git, or SVN.

# where modules from the Puppetfile will be installed
moduledir 'modules'

# Forge Modules
mod 'puppetlabs/ntp', '4.1.0'
mod 'puppetlabs/stdlib'  # If no version is specified the latest version available at the time will be installed, and will be kept at that version.
# If the version is set to :latest then the module will be always updated to the latest version available.

# Git Modules
# If not pinned, then keep it up to date with 'master'
mod 'apache',
  :git => 'https://github.com/puppetlabs/puppetlabs-apache'#, 
  #:branch => 'docs_experiment'
  #:tag => '0.9.0'
  #:commit => '83401079053dca11d61945bd9beef9ecf7576cbf'
  #:branch => :control_branch  # the content should track a branch reference matching the containing control repo branch.
  #:default_branch => 'master'  # if the desired pin cannot be resolved

# Other sources for Modules
# - tarball (fetched via URL)
# - local
