package 'tree' do
  action :install
end

package 'git'

package 'ntp'

node['ipaddress']
node['memory']['total']

template '/home/krasus/Desktop/chef/motd' do
  source 'motd.erb'
  variables(
    :name => 'KRASSUSS'
  )
end
