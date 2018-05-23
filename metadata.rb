name 'digitalocean-agent'
maintainer 'Mason Donahue'
maintainer_email 'mason@lucyparsonslabs.com'
license 'Apache-2.0'
description 'Installs do-agent for DigitalOcean droplets'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

issues_url 'https://github.com/lucyparsons/chef-digitalocean-agent/issues'
source_url 'https://github.com/lucyparsons/chef-digitalocean-agent'

%w(centos redhat debian ubuntu fedora).each do |os|
  supports os
end

depends 'apt'
depends 'yum'
