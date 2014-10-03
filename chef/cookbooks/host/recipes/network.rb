cookbook_file "network" do
  path "/etc/rc.conf.d/network"
  action :create
end

cookbook_file "routing" do
  path "/etc/rc.conf.d/routing"
  action :create
end

cookbook_file "local_unbound" do
  path "/etc/rc.conf.d/local_unbound"
  action :create
end

cookbook_file "rtsold" do
  path "/etc/rc.conf.d/rtsold"
  action :create
end

cookbook_file "hosts" do
  path "/etc/hosts"
  action :create
end
