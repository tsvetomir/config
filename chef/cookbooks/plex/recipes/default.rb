package 'plexmediaserver'

cookbook_file "plexmediaserver" do
  path "/usr/local/etc/rc.conf.d/plexmediaserver"
  action :create
end

service "plexmediaserver" do
    action :start
    supports :status => true
end
