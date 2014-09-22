# Users should enable Time Machine on remote disks
# defaults write com.apple.systempreferences TMShowUnsupportedNetworkVolumes 1

package "netatalk"
package "nss_mdns"

cookbook_file "dbus" do
  path "/etc/rc.conf.d/dbus"
  action :create
end

cookbook_file "netatalk" do
  path "/etc/rc.conf.d/netatalk"
  action :create
end

cookbook_file "avahi_daemon" do
  path "/etc/rc.conf.d/avahi_daemon"
  action :create
end

cookbook_file "avahi_dnsconfd" do
  path "/etc/rc.conf.d/avahi_dnsconfd"
  action :create
end

cookbook_file "afpd.conf" do
  path "/usr/local/etc/afpd.conf"
  action :create
end

cookbook_file "AppleVolumesTimeMachine.default" do
  path "/usr/local/etc/AppleVolumesTimeMachine.default"
  action :create
end

cookbook_file "afpd.service" do
  path "/usr/local/etc/avahi/services/afpd.service"
  action :create
end

user 'imkoleva' do
    comment "Ivelina Koleva"
    home "/home/imkoleva"
    shell "/bin/nologin"
    password "$6$RwwunGQsfZDLaWeG$FkKTvZ7Zhp/hLiy1CegzmWEEl99AiK1jhw.BaLCcoleoqReewadnNy1.k.WZFDMT5WPFWD7HcELCe1OdtcssC/"
end

directory "/storage-a/timecapsule/imkoleva" do
    owner "imkoleva"
    group "imkoleva"
    mode "0770"
    action :create
end

service "dbus" do
  action [:start]
end

service "netatalk" do
  supports :status => false
  pattern "afpd"
  action [:start]
end

service "avahi-daemon" do
  action [:start]
end

service "avahi-dnsconfd" do
  action [:start]
end
