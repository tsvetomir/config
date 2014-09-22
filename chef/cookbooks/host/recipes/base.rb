cookbook_file "rc.conf" do
  path "/etc/rc.conf"
  action :create
end

directory "/etc/rc.conf.d" do
    owner "root"
    group "wheel"
    mode "0755"
    action :create
end

cookbook_file "motd" do
  path "/etc/motd"
  action :create
end
