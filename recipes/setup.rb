package 'tree' do
  action :install
end

package 'git'

package 'ntp'

node['ipaddress']
node['memory']['total']

template '/home/vagrant/motd' do
  source 'motd.erb'
  variables(
    :name => 'KRASSUSS'
  )
end
