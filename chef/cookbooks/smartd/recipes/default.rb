package "smartmontools"

cookbook_file "smartd" do
  path "/etc/rc.conf.d/smartd"
  action :create
end

cookbook_file "smartd.conf" do
  path "/usr/local/etc/smartd.conf"
  action :create
end

service "smartd" do
    action :start
    supports :status => true
end
