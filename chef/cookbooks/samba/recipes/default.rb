package "samba41"

cookbook_file "samba" do
  path "/etc/rc.conf.d/samba"
  action :create
end

cookbook_file "smb4.conf" do
  path "/usr/local/etc/smb4.conf"
  action :create
end

service "samba_server" do
  action [:start, :reload]
end

