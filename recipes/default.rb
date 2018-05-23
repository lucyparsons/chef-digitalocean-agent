#
# Cookbook:: digitalocean-agent
# Recipe:: default
#
# Copyright:: 2018, Lucy Parsons Labs
#
Chef::Log.info 'probing bios_vendor to ensure digitalocean'
# return unless IO.read('/sys/devices/virtual/dmi/id/bios_vendor').strip.match /DigitalOcean/

case node['platform_family']
when 'rhel', 'fedora'
  include_recipe 'yum'

  yum_repository 'digitalocean-agent' do
    description ''
    baseurl 'https://repos.sonar.digitalocean.com/yum/$basearch'
    gpgkey 'https://repos.sonar.digitalocean.com/sonar-agent.asc'
    action :create
  end
when 'debian'
  include_recipe 'apt'

  apt_repository 'digitalocean-agent' do
    uri 'https://repos.sonar.digitalocean.com/apt'
    key '9FE3B226BD775196D8C2E599DE88104AA4C6383F'
    distribution 'main'
    components ['main']
  end
end

package 'do-agent' do
  action :upgrade
end

service 'do-agent' do
  action [:enable, :start]
end
