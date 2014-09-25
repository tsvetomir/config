package 'zfs-periodic'
package 'smartmontools'

cookbook_file 'periodic.conf' do
  path '/etc/periodic.conf'
  action :create
end

cookbook_file '942.freebsd-update' do
  path '/usr/local/etc/periodic/weekly/942.freebsd-update'
  mode "0755"
  action :create
end

