cookbook_file "network" do
  path "/etc/rc.conf.d/network"
  action :create
end

cookbook_file "hosts" do
  path "/etc/hosts"
  action :create
end
