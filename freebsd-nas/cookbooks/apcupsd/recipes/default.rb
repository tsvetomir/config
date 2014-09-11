package "apcupsd"

ruby_block "rc.conf" do
  block do
    file = Chef::Util::FileEdit.new("/etc/rc.conf")
    file.insert_line_if_no_match(/^apcupsd_enable/, "apcupsd_enable=\"YES\"")
    file.write_file
  end
end

cookbook_file "apcupsd.conf" do
  path "/usr/local/etc/apcupsd/apcupsd.conf"
  action :create
end

service "apcupsd" do
  action [:start]
end
