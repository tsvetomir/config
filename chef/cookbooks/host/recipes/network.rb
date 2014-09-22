cookbook_file "network" do
  path "/etc/rc.conf.d/network"
  action :create
end
