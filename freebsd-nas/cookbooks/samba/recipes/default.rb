package "samba41"

ruby_block "rc.conf" do
  block do
    file = Chef::Util::FileEdit.new("/etc/rc.conf")
    file.insert_line_if_no_match(/^samba_server_enable/, "samba_server_enable=\"YES\"")
    file.write_file
  end
end

cookbook_file "smb4.conf" do
  path "/usr/local/etc/smb4.conf"
  action :create
end

service "samba_server" do
  action [:start, :reload]
end

