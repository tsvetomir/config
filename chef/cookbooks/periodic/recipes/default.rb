package 'zfs-periodic'
package 'smartmontools'

cookbook_file 'periodic.conf' do
  path '/etc/periodic.conf'
  action :create
end

cookbook_file '900.freebsd-update' do
  path '/etc/periodic/weekly/900.freebsd-update'
  mode "0755"
  action :create
end

