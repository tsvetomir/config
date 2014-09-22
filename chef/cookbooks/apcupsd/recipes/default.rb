package "apcupsd"

cookbook_file "apcupsd" do
  path "/etc/rc.conf.d/apcupsd"
  action :create
end

cookbook_file "apcupsd.conf" do
  path "/usr/local/etc/apcupsd/apcupsd.conf"
  action :create
end

service "apcupsd" do
  action [:start]
end
