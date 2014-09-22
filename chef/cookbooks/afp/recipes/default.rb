package "netatalk"

cookbook_file "afp" do
  path "/etc/rc.conf.d/afp"
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

user 'imkoleva' do
    comment "Ivelina Koleva"
    home "/home/imkoleva"
    shell "/bin/nologin"
    password "$6$i5g8qYMsCjPhBrAX$UYaNi9UonZ42mumso2kmM3EglOgoMCJLZAkO8CFkGAxgjZ.Yx7fnF.uTKGcB19RP3JRfzeFOydZaq1joWBWMh."
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
  action [:start, :reload]
end

service "avahi-daemon" do
  action [:start]
end

service "avahi-dnsconfd" do
  action [:start]
end
