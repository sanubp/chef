file '/etc/motd' do
      content " this is the property of HCL system
      HOSTNAME: #{node['hostname']}
      IPADDRESS: #{node['opaddress']}
      MEMORY: #{node['memory']}
 "
owner 'root'
group 'root'
action :create 
end
