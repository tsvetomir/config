remote_file '/usr/ports/distfiles/jre-7u67-linux-i586.tar.gz' do
    source 'file:///storage-a/install/jre-7u67-linux-i586.tar.gz'
    action :create
end

execute 'kldload -n linux'

package 'linux-crashplan' do
    source '/ports/sysutils/linux-crashplan'
end

cookbook_file 'crashplan' do
  path '/etc/rc.conf.d/crashplan'
  action :create
end

cookbook_file 'rc_d_crashplan' do
  path '/usr/local/etc/rc.d/crashplan'
  action :create
end

cookbook_file 'linux' do
  path '/etc/rc.conf.d/linux'
  action :create
end

ruby_block 'fstab' do
    block do
        linproc = 'linproc /compat/linux/proc linprocfs rw 0 0'
        file = Chef::Util::FileEdit.new('/etc/fstab')
        file.insert_line_if_no_match(/^linproc/, linproc)
        file.write_file
    end
end

service 'crashplan' do
  action :start
  supports :status => true
end
